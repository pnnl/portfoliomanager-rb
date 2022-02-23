require "net/http"

module PortfolioManager
  module Services
    # Target Finder Services
    #
    # Target Finder Services allows you to retrieve the estimated annual energy
    # consumption associated with specific property design characteristics, and
    # an energy performance goal expressed as either an ENERGY STAR score or %
    # Better than Median. Conversely, you may also retrieve the ENERGY STAR
    # score and % Better than Median associated with the estimated annual energy
    # consumption of a specific property design. These metrics allow you to
    # estimate how much energy your property would need to consume annually to
    # reach your design energy goal, or conversely, determine the ENERGY STAR
    # score that would be associated with your design estimated energy
    # consumption. Target Finder Services does require user authentication but
    # the property design information that you submit will not be saved for
    # later reference. Your results can be returned in the set of units that you
    # specify.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/targetFinder
    module TargetFinder
      # Target Finder
      module TargetFinder
        # Live Environment
        module Live
          # Target Finder
          #
          # This web service allows you to retrieve the estimated annual energy
          # consumption associated with specific property design
          # characteristics, and an energy performance goal expressed as either
          # an ENERGY STAR score or % Better than Median. Conversely, you may
          # also retrieve the ENERGY STAR score and % Better than Median
          # associated with the estimated annual energy consumption of a
          # specific property design. These metrics allow you to estimate how
          # much energy your property would need to consume annually to reach
          # your design energy goal, or conversely, determine the ENERGY STAR
          # score that would be associated with your design estimated energy
          # consumption. Target Finder Services does require user authentication
          # but the property design information that you submit will not be
          # saved for later reference. Your results can be returned in the set
          # of units that you specify.
          #
          # @param target_finder [PortfolioManager::Xml::UnAuthDesignType]
          # @param measurement_system ["EPA", "METRIC"]
          # @return [PortfolioManager::Xml::PropertyMetricsList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/targetFinder/targetFinder/post
          def target_finder(target_finder, measurement_system = "EPA")
            request(Net::HTTP::Get, path_for("targetFinder"), {
              "measurementSystem" => measurement_system,
            }, {}, target_finder, "targetFinder", PortfolioManager::Xml::PropertyMetricsList, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Target Finder Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::TargetFinder::TargetFinder::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::TargetFinder::TargetFinder::Test
        end
      end
    end
  end
end
