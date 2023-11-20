require "net/http"

module PortfolioManager
  module Services
    # Home Energy Yardstick Services
    #
    # Home Energy Yardstick Services allows you to receive a simple assessment
    # of your home's annual energy use compared to similar homes. By providing
    # some information about your home, you can get your home's Home Energy
    # Yardstick score (on a scale of 1 to 100), insights into how much of your
    # home's energy use is related to heating and cooling versus other everyday
    # uses like appliances, lighting, and hot water. You will also be able to
    # receive an estimate of your home's annual carbon emissions. Home Energy
    # Yardstick Services do require user authenication and the home information
    # that you submit will not be saved for later reference.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/hey
    module HomeEnergyYardstick
      # Home Energy Yardstick
      module HomeEnergyYardstick
        # Live Environment
        module Live
          # Home Energy Yardstick
          #
          # This web service returns a list of performance-based home assessment
          # metrics for a specified home's design characteristics and energy
          # use. Home Energy Yardstick Service does require user authentication
          # but the home design information that you submit will not be saved
          # for later reference.
          #
          # The following meter types are only allowed:
          # - Coal Bituminous
          # - Electric
          # - Fuel Oil No 2
          # - Kerosene
          # - Natural Gas
          # - Propane
          # - Wood
          #
          # @param hey [PortfolioManager::Xml::HeyType]
          # @return [PortfolioManager::Xml::PropertyMetricsType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/hey/hey/post
          def home_energy_yardstick(hey)
            request(Net::HTTP::Post, path_for("hey"), {}, {}, hey, "hey", PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Home Energy Yardstick Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::HomeEnergyYardstick::HomeEnergyYardstick::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::HomeEnergyYardstick::HomeEnergyYardstick::Test
        end
      end
    end
  end
end
