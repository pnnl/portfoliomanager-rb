require "erb"
require "logger/application"
require "net/http"
require "uri"

module PortfolioManager
  # HTTP Request Error
  class HTTPRequestError < PortfolioManager::Error
    attr_reader :request

    # Default constructor.
    #
    # @param request [Net::HTTPRequest]
    # @param args [Array<Object>]
    def initialize(request, *args)
      super(*args)

      @request = request
    end
  end

  # HTTP Response Error
  #
  # @!attribute [r] response
  #   @return [Net::HTTPResponse]
  class HTTPResponseError < PortfolioManager::Error
    attr_reader :response

    # Default constructor.
    #
    # @param response [Net::HTTPResponse]
    # @param args [Array<Object>]
    def initialize(response, *args)
      super(*args)

      @response = response
    end
  end

  # HTTP Basic Credentials Not Found Error
  class HTTPBasicCredentialsNotFoundError < HTTPRequestError; end

  module Client
    # Base Client
    #
    # @!attribute [r] user
    #   @return [String]
    # @!attribute [r] pass
    #   @return [String]
    # @!attribute [r] base_uri
    #   @return [URI]
    # @!attribute [r] debug
    #   @return [Boolean]
    class Base < Logger::Application
      attr_reader :base_uri
      attr_reader :user, :pass
      attr_reader :debug

      # Default constructor.
      #
      # @param base_uri [URI]
      # @param user [nil, String]
      # @param pass [nil, String]
      # @param debug [Boolean]
      # @return [PortfolioManager::Client::Base]
      def initialize(base_uri, user = nil, pass = nil, debug = false)
        super("PortfolioManager")

        @base_uri, @user, @pass, @debug = base_uri, user, pass, debug
      end

      protected

      # Send HTTP request.
      #
      # @param verb [Class]
      # @param path [String]
      # @param params [Hash<String, Object>]
      # @param initheader [Hash<String, String>]
      # @param obj [nil, Object]
      # @param elename [nil, String]
      # @param klass [nil, Class]
      # @param options [Hash<Symbol, Object>]
      # @option options [Boolean] :basic_auth
      # @return [Object]
      # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
      # @raise [PortfolioManager::HTTPResponseError]
      def request(verb = Net::HTTP::Get, path = "/", params = {}, initheader = {}, obj = nil, elename = nil, klass = nil, **options)
        uri = url_for(path, params)

        request = verb.new(uri, initheader)

        request["Accept"] = "application/xml, text/xml"

        unless obj.nil?
          request["Content-Type"] = "application/xml; charset=UTF-8"

          request.body = PortfolioManager::Mapper.instance.obj2xml(obj, elename)
        end

        if options[:basic_auth]
          if @user.nil? || @pass.nil?
            raise PortfolioManager::HTTPBasicCredentialsNotFoundError.new(request)
          else
            request.basic_auth(@user, @pass)
          end
        end

        Net::HTTP.start(uri.host, uri.port, use_ssl: uri.is_a?(URI::HTTPS)) do |http|
          log(INFO, "Request:\n" + ([
            "Protocol: HTTP/#{Net::HTTP.version_1_2? ? "1.2" : "1.1"}",
            "Method: #{verb.name.split("::")[-1].upcase}",
            "Scheme: #{uri.scheme}",
            "Host: #{uri.host}",
            "Path: #{uri.path}",
            "QueryString: #{uri.query}",
            "Body: #{request.body}",
          ] + (["Accept", "Authorization", "Content-Type"] + initheader.keys).sort.uniq.collect { |key|
            request.key?(key) ? "#{key}: #{request[key]}" : nil
          }.compact).collect { |s|
            "\t#{s}"
          }.join("\n"))

          response = http.request(request)

          log(INFO, "Response:\n" + ([
            "Protocol: HTTP/#{response.http_version}",
            "URI: #{response.uri}",
            "Code: #{response.code}",
            "Message: #{response.message}",
            "Body: #{response.body}",
          ]).compact.collect { |s|
            "\t#{s}"
          }.join("\n"))

          if response.body.start_with?("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>")
            PortfolioManager::Mapper.instance.xml2obj(response.body, klass)
          else
            raise PortfolioManager::HTTPResponseError.new(response)
          end
        end
      end

      # Build path for the given arguments.
      #
      # @param args [Array<#to_s>]
      # @return [String]
      def path_for(*args)
        "/#{args.collect { |arg| ERB::Util.url_encode(arg.to_s) }.join("/")}"
      end

      # Build URL for given path and query parameters.
      #
      # @param path [String]
      # @param params [Hash<String, Object>]
      # @return [URI]
      def url_for(path, params = {})
        query_string = params.each_pair.collect { |pair|
          key, value = *pair

          value.nil? ? nil : "#{ERB::Util.url_encode(key)}=#{ERB::Util.url_encode(value.to_s)}"
        }.compact.join("&")

        URI("#{@base_uri}#{path}#{query_string.empty? ? nil : "?#{query_string}"}")
      end
    end

    # Live Environment Client
    class Live < Base
      # Default constructor.
      #
      # @param user [nil, String]
      # @param pass [nil, String]
      # @param debug [Boolean]
      # @return [PortfolioManager::Client::Live]
      def initialize(user = nil, pass = nil, debug = false)
        super(URI("https://portfoliomanager.energystar.gov/ws"), user, pass, debug)
      end

      include PortfolioManager::Services::All::Live
    end

    # Test Environment Client
    class Test < Base
      # Default constructor.
      #
      # @param user [nil, String]
      # @param pass [nil, String]
      # @param debug [Boolean]
      # @return [PortfolioManager::Client::Test]
      def initialize(user = nil, pass = nil, debug = false)
        super(URI("https://portfoliomanager.energystar.gov/wstest"), user, pass, debug)
      end

      include PortfolioManager::Services::All::Live
      include PortfolioManager::Services::All::Test
    end
  end
end
