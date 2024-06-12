require "net/http"

module PortfolioManager
  module Services
    # Connection/Share Services
    #
    # The Connection/Share Services allows you to connect to existing Portfolio
    # Manager accounts and share existing properties and meters. These services
    # are divided into 2 sections.The first section includes services that allow
    # you to respond to connection and share requests from existing Portfolio
    # Manager users. In addition, there are services that allow you to
    # disconnect from a user or remove any property or meter shares from a user.
    # The second section includes services that will help you test the
    # connection/share process within the Test environment. These services allow
    # you to generate connection and share requests that are sent to you. This
    # simulates the requests being submitted from other Portfolio Manager users.
    # In addition, as you simulate generating these requests from other
    # Portfolio Manager users, you will be able to submit values to custom
    # fields that you define with each request. This set of web services are
    # only available within the Test environment.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection
    module Connection
      # Connection/Share
      module ConnectionShare
        # Live Environment
        module Live
          # Accept/Reject Pending Connection Requests
          #
          # This web service sends an accept or reject reply to a pending
          # connection request along with an optional note based on the
          # information provided in the XML request.
          #
          # @param account_id [Integer]
          # @param sharing_response [PortfolioManager::Xml::SharingResponseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/connect/post
          def accept_reject_pending_connection_requests(account_id, sharing_response)
            request(Net::HTTP::Post, path_for("connect", "account", account_id), {}, {}, sharing_response, "sharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Accept/Reject Pending Meter Share Requests
          #
          # This web service sends an accept or reject reply to a pending meter
          # share request along with an optional note based on the information
          # provided in the XML request.
          #
          # @param meter_id [Integer]
          # @param sharing_response [PortfolioManager::Xml::SharingResponseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/shareMeter/post
          def accept_reject_pending_meter_share_requests(meter_id, sharing_response)
            request(Net::HTTP::Post, path_for("share", "meter", meter_id), {}, {}, sharing_response, "sharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Accept/Reject Pending Property Share Requests
          #
          # This web service sends an accept or reject reply to a pending
          # property share request along with an optional note based on the
          # information provided in the XML request.
          #
          # @param property_id [Integer]
          # @param sharing_response [PortfolioManager::Xml::SharingResponseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/shareProperty/post
          def accept_reject_pending_property_share_requests(property_id, sharing_response)
            request(Net::HTTP::Post, path_for("share", "property", property_id), {}, {}, sharing_response, "sharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Disconnect From Customer
          #
          # This web service removes the existing connection between you and a
          # specific customer. Any existing property and meter shares between
          # you and the specific customer are also automatically removed by
          # default or can be kept in place. An optional note indicating the
          # reason can be included too. This optional note is provided in the
          # XML request.
          #
          # @param account_id [Integer]
          # @param terminate_sharing_response [PortfolioManager::Xml::TerminateShareResponseType]
          # @param keep_shares [Boolean]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/disconnect/post
          def disconnect_from_customer(account_id, terminate_sharing_response, keep_shares = false)
            request(Net::HTTP::Post, path_for("disconnect", "account", account_id), {
              "keepShares" => keep_shares,
            }, {}, terminate_sharing_response, "terminateSharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Notifications
          #
          # This web service returns a list of notifications that are generated
          # when another user deletes or unshares a property or meter that you
          # have access to. The purpose of these notifications is to help you
          # stay in synch with your customer's data. Once a notification is
          # read, it is marked as read (by default) and will not be available in
          # subsequent calls. An option is available to mark those notifications
          # as unread.
          #
          # The possible notification types are:
          # * UNSHARE - Indicates that your access to a property or meter has been removed.
          # * SHAREUPDATE - Indicates that your access level to a property or meter has changed.
          #
          # The DISCONNECT and TRANSFERPROPERTY notification types are not
          # supported in the Test environment.
          #
          # Please see this {https://energystar-mesa.force.com/PortfolioManager/s/article/How-does-the-Get-Notifications-API-call-behave-differently-in-the-TEST-and-LIVE-web-service-environments FAQ page}
          # for more information.
          #
          # @param clear [Boolean]
          # @return [PortfolioManager::Xml::NotificationListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/notificationList/get
          def get_notifications(clear = true)
            request(Net::HTTP::Get, path_for("notification", "list"), {
              "clear" => clear,
            }, {}, nil, nil, PortfolioManager::Xml::NotificationListType, basic_auth: true)
          end

          # Get Pending Connection Requests
          #
          # This web service returns a list of pending customer connection
          # requests. A connection to the customer must be established first
          # before any properties and meters can be shared with you. The list of
          # pending customer connection requests is returned in sets of 20.
          #
          # @param page [Integer]
          # @return [PortfolioManager::Xml::PendingListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/pendingAccountList/get
          def get_pending_connection_requests(page = 1)
            request(Net::HTTP::Get, path_for("connect", "account", "pending", "list"), {
              "page" => page,
            }, {}, nil, nil, PortfolioManager::Xml::PendingListType, basic_auth: true)
          end

          # Get Pending Meter Share Requests
          #
          # This web service returns a list of pending property meter requests.
          # These meter share requests belong to customers that you are already
          # connected to. The corresponding properties do not have to be already
          # shared with you. The list of pending meter share requests is
          # returned in sets of 20.
          #
          # @param page [Integer]
          # @return [PortfolioManager::Xml::PendingListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/pendingMeterList/get
          def get_pending_meter_share_requests(page = 1)
            request(Net::HTTP::Get, path_for("share", "meter", "pending", "list"), {
              "page" => page,
            }, {}, nil, nil, PortfolioManager::Xml::PendingListType, basic_auth: true)
          end

          # Get Pending Property Share Requests
          #
          # This web service returns a list of pending property share requests.
          # These property share requests belong to customers that you are
          # already connected to. The list of pending property share requests is
          # returned in sets of 20.
          #
          # @param page [Integer]
          # @return [PortfolioManager::Xml::PendingListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/pendingPropertyList/get
          def get_pending_property_share_requests(page = 1)
            request(Net::HTTP::Get, path_for("share", "property", "pending", "list"), {
              "page" => page,
            }, {}, nil, nil, PortfolioManager::Xml::PendingListType, basic_auth: true)
          end

          # Unshare Meter
          #
          # This web service removes an existing share between you and a
          # specific meter. An optional note indicating the reason can be
          # included too. This optional note is provided in the XML request.
          #
          # @param meter_id [Integer]
          # @param terminate_sharing_response [TerminateShareResponseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/unshareMeter/post
          def unshare_meter(meter_id, terminate_sharing_response)
            request(Net::HTTP::Post, path_for("unshare", "meter", meter_id), {}, {}, terminate_sharing_response, "terminateSharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Unshare Property
          #
          # This web service removes an existing share between you and a
          # specific property. An optional note indicating the reason can be
          # included too. This optional note is provided in the XML request.
          #
          # @param property_id [Integer]
          # @param terminate_sharing_response [TerminateShareResponseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/connection/unshareProperty/post
          def unshare_property(property_id, terminate_sharing_response)
            request(Net::HTTP::Post, path_for("unshare", "property", property_id), {}, {}, terminate_sharing_response, "terminateSharingResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Simulating Connection/Share Requests
      module SimulatingConnectionShareRequests
        # Live Environment
        module Live
        end

        # Test Environment
        module Test
          # Send Connection Request From Test Environment
          #
          # This web service sends a connection request from a customer to you.
          # You must run this web service as the customer that you want the
          # connection request to originate from and specify the account that
          # receives the request. This simulates the customer sending a
          # connection request to you. This web service is only available in the
          # Test environment. After a connection request is sent, you can verify
          # it by running the web service that returns a list of pending
          # customer connections. A connection request cannot be sent if the two
          # accounts are already connected.
          #
          # @param dx_account_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/invite/post
          def send_connection_request_from_test_environment(dx_account_id)
            request(Net::HTTP::Post, path_for("invite", "account", dx_account_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Send Meter Share Request From Test Environment
          #
          # This web service sends a share request for a specific meter from a
          # customer to you. You must run this web service as the customer that
          # you want the meter share request to originate from and specify the
          # account that receives the request. This simulates the customer
          # sending a meter share request to you. Any existing share for this
          # specific meter between you and this customer will be updated after
          # submitting this service. If a meter share is pending
          # acceptance/rejection, additional share requests cannot be sent. This
          # web service is only available in the Test environment. After the
          # meter share request is sent, you can verify it by running the web
          # service that returns a list of pending meter share requests.
          #
          # @param dx_account_id [Integer]
          # @param meter_id [Integer]
          # @param access_level ["READ", "READ_WRITE"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/inviteMeter/post
          def send_meter_share_request_from_test_environment(dx_account_id, meter_id, access_level = "READ_WRITE")
            request(Net::HTTP::Post, path_for("invite", "account", dx_account_id, "meter", meter_id), {
              "accessLevel" => access_level,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Send Property Share Request From Test Environment
          #
          # This web service sends a share request for a specific property from
          # a customer to you. You must run this web service as the customer
          # that you want the property share request to originate from and
          # specify the account that receives the request. This simulates the
          # customer sending a property share request to you. Any existing share
          # for this specific property between you and this customer will be
          # updated after submitting this service. If a property share is
          # pending acceptance/rejection, additional share requests cannot be
          # sent. This web service is only available in the Test environment.
          # After the property share request is sent, you can verify it by
          # running the web service that returns a list of pending property
          # share requests.
          #
          # @param dx_account_id [Integer]
          # @param property_id [Integer]
          # @param access_level ["READ", "READ_WRITE"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/inviteProperty/post
          def send_property_share_request_from_test_environment(dx_account_id, property_id, access_level = "READ_WRITE")
            request(Net::HTTP::Post, path_for("invite", "account", dx_account_id, "property", property_id), {
              "accessLevel" => access_level,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Submit Customer-Level Custom Field Value(s)
          #
          # This web service submits data for a list of customer-level custom
          # fields based on the data provided in the XML request from a specific
          # Portfolio Manager customer to you. This web service is used within
          # the Test environment to simulate a Portfolio Manager user providing
          # data that is required by you during the connection process. You must
          # run this web service as the customer that you the data to be
          # provided from.
          #
          # @param dx_account_id [Integer]
          # @param custom_field_list [PortfolioManager::Xml::CustomFieldList]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/accountCustomFieldValues/put
          def submit_customer_level_custom_field_values(dx_account_id, custom_field_list)
            request(Net::HTTP::Put, path_for("account", "customFieldList", "recipient", dx_account_id), {}, {}, custom_field_list, "customFieldList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Submit Meter-Level Custom Field Value(s)
          #
          # This web service submits data for a list of meter-level custom
          # fields based on the data provided in the XML request from a specific
          # Portfolio Manager customer to you. This web service is used within
          # the Test environment to simulate a Portfolio Manager user providing
          # data that is required by you during the share process. You must run
          # this web service as the customer that you the data to be provided
          # from.
          #
          # @param meter_id [Integer]
          # @param dx_account_id [Integer]
          # @param custom_field_list [PortfolioManager::Xml::CustomFieldList]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/meterCustomFieldValues/put
          def submit_meter_level_custom_field_values(meter_id, dx_account_id, custom_field_list)
            request(Net::HTTP::Put, path_for("meter", meter_id, "customFieldList", "recipient", dx_account_id), {}, {}, custom_field_list, "customFieldList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Submit Property-Level Custom Field Value(s)
          #
          # This web service submits data for a list of property-level custom
          # fields based on the data provided in the XML request from a specific
          # Portfolio Manager customer to you. This web service is used within
          # the Test environment to simulate a Portfolio Manager user providing
          # data that is required by you during the share process. You must run
          # this web service as the customer that you the data to be provided
          # from.
          #
          # @param property_id [Integer]
          # @param dx_account_id [Integer]
          # @param custom_field_list [PortfolioManager::Xml::CustomFieldList]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/connection/propertyCustomFieldValues/put
          def submit_property_level_custom_field_values(property_id, dx_account_id, custom_field_list)
            request(Net::HTTP::Put, path_for("property", property_id, "customFieldList", "recipient", dx_account_id), {}, {}, custom_field_list, "customFieldList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end
      end

      # All Connection/Share Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::Connection::ConnectionShare::Live
          include PortfolioManager::Services::Connection::SimulatingConnectionShareRequests::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Connection::ConnectionShare::Test
          include PortfolioManager::Services::Connection::SimulatingConnectionShareRequests::Test
        end
      end
    end
  end
end
