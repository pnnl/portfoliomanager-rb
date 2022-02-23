require "net/http"

module PortfolioManager
  module Services
    # Reporting Services
    #
    # The Reporting Services allows you to retrieve metrics for your properties.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting
    module Reporting
      # Reporting
      module Reporting
        # Live Environment
        module Live
          # Get Design Metrics
          #
          # This web service returns a list of metric values for a specific
          # property design based on a specified measurement system. If the
          # property contains operational data then an additional set of metric
          # values based on the property's current period ending date is also
          # returned. The property must already be shared with you. A full list
          # of the reporting metrics that are available through this service and
          # related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @note Metrics that are readily available through other web services,
          #   such as {PortfolioManager::Services::Property::Design::Live#get_design GET /property/(propertyId)/design}
          #   are not included in the reporting web services, since they are
          #   already accessible elsewhere.
          #
          # @param property_id [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/designMetrics/get
          def get_design_metrics(property_id, measurement_system = nil)
            request(Net::HTTP::Get, path_for("property", property_id, "design", "metrics"), {
              "measurementSystem" => measurement_system,
            }, {}, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Metrics
          #
          # This web service returns a list of metric values for a specific
          # property and period ending date based on the specified set of
          # metrics and measurement system. The property must already be shared
          # with you. A full list of the reporting metrics that are available
          # through this service and related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @note Metrics that are readily available through other web services,
          #   such as {PortfolioManager::Services::Property::Property::Live#get_property GET /property/(propertyId)}
          #   and {PortfolioManager::Services::PropertyUse::PropertyUse::Live#get_property_use GET /propertyUse/(propertyUseId)}
          #   are not included in the reporting web services, since they are
          #   already accessible elsewhere.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @param metrics [Array<#to_s>]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/propertyMetrics/get
          def get_property_metrics(property_id, year, month, measurement_system = nil, metrics = [])
            request(Net::HTTP::Get, path_for("property", property_id, "metrics"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {
              "PM-Metrics" => metrics.collect(&:to_s).join(","),
            }, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Monthly Metrics
          #
          # This web service returns a list of metric values for a specific
          # property and period ending date based on the specified set of
          # metrics and measurement system. Each monthly metric will return 12
          # values (a value for each month). The months returned are all months
          # captured within the specified annual period ending date. The metrics
          # will reflect monthly totals of meters that you have access to.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @param metrics [Array<#to_s>]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/propertyMetricsMonthly/get
          def get_property_monthly_metrics(property_id, year, month, measurement_system = nil, metrics = [])
            request(Net::HTTP::Get, path_for("property", property_id, "metrics", "monthly"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {
              "PM-Metrics" => metrics.collect(&:to_s).join(","),
            }, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Use Metrics
          #
          # This web service returns a list of time-weighted use detail values
          # for a specific property, period ending date, and measurement system.
          # The property must already be shared with you. A full list of the
          # reporting metrics that are available through this service and
          # related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/useDetailsMetrics/get
          def get_property_use_metrics(property_id, year, month, measurement_system = nil)
            request(Net::HTTP::Get, path_for("property", property_id, "useDetails", "metrics"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {}, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Reasons for No Energy Score
          #
          # This web service returns a list of reasons that explain why the
          # specific property cannot receive an ENERGY STAR score for a certain
          # period ending date. If both the year and month are not provided then
          # the property's current energy period ending date is used. Please
          # refer to this {https://downloads.energystar.gov/bi/portfolio-manager/Alerts_Public_Reference_en_US.xlsx Alert Inventory}
          # for a list of possible reasons you might see in the response. Refer
          # specifically to the alerts that are denoted "yes" in the N/A
          # Explanations column; these are the alerts that apply when a metric,
          # like the ENERGY STAR score, cannot be computed.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @return [PortfolioManager::Xml::AlertsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reasonsForNoScore/get
          def get_reasons_for_no_energy_score(property_id, year, month)
            request(Net::HTTP::Get, path_for("property", property_id, "reasonsForNoScore"), {
              "year" => year,
              "month" => month,
            }, {}, nil, nil, PortfolioManager::Xml::AlertsType, basic_auth: true)
          end

          # Get Reasons for No Water Score
          #
          # This web service returns a list of reasons that explain why the
          # specific property cannot receive an ENERGY STAR score for a certain
          # period ending date. If both the year and month are not provided then
          # the property's current water period ending date is used. Please
          # refer to this {https://downloads.energystar.gov/bi/portfolio-manager/Alerts_Public_Reference_en_US.xlsx Alert Inventory}
          # for a list of possible reasons you might see in the response. Refer
          # specifically to the alerts that are denoted "yes" in the N/A
          # Explanations column; these are the alerts that apply when a metric,
          # like the ENERGY STAR score, cannot be computed.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @return [PortfolioManager::Xml::AlertsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reasonsForNoWaterScore/get
          def get_reasons_for_no_water_score(property_id, year, month)
            request(Net::HTTP::Get, path_for("property", property_id, "reasonsForNoWaterScore"), {
              "year" => year,
              "month" => month,
            }, {}, nil, nil, PortfolioManager::Xml::AlertsType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Reporting Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::Reporting::Reporting::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Reporting::Reporting::Test
        end
      end
    end
  end
end
