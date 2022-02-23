require "net/http"

module PortfolioManager
  module Services
    # Meter Services
    #
    # The Meter Services allow you to manage meters within Portfolio Manager.
    # These services support all meter categories: all fuels, water, Data Center
    # IT energy meters, waste, and water and wastewater plant meters. The
    # ability to define green power is also provided. You must be already
    # connected to your customers to be able to manage their meters.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter
    module Meter
      # Meter
      module Meter
        # Live Environment
        module Live
          # Add Meter
          #
          # This web service creates a meter for a specific property based on
          # the information provided in the XML request and establishes all of
          # the necessary meter sharing permissions between you and the
          # Portfolio Manager user. It returns the unique identifier to the
          # newly created meter and a link to the corresponding web service to
          # retrieve it. The property must already be shared with you and you
          # must have write access to the property.
          #
          # @param property_id [Integer]
          # @param meter [PortfolioManager::Xml::MeterType, PortfolioManager::Xml::TypeOfWasteMeter]
          # @param elename [nil, "meter", "wasteMeter"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meter/post
          def add_meter(property_id, meter, elename = nil)
            request(Net::HTTP::Post, path_for("property", property_id, "meter"), {}, {}, meter, elename, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Meter
          #
          # This web service deletes a specified meter. The meter must already
          # be shared with you.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meter/delete
          def delete_meter(meter_id)
            request(Net::HTTP::Delete, path_for("meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Meter
          #
          # This web service updates a specified meter based on the information
          # provided in the XML request and establishes all of the necessary
          # meter sharing permissions between you and the Portfolio Manager
          # user. It returns the unique identifier to the meter and a link to
          # the corresponding web service to retrieve it. The meter must already
          # be shared with you and you must have write access to the meter.
          #
          # @param meter_id [Integer]
          # @param meter [PortfolioManager::Xml::MeterType, PortfolioManager::Xml::TypeOfWasteMeter]
          # @param elename [nil, "meter", "wasteMeter"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meter/put
          def edit_meter(meter_id, meter, elename = nil)
            request(Net::HTTP::Put, path_for("meter", meter_id), {}, {}, meter, elename, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Meter
          #
          # This web service returns the accountId and propertyId that
          # corresponds to a specific meter. The accountId returned is the
          # Property Data Administrator (PDA). If the specified meter refers to
          # an IT meter or a plant flow meter, then the corresponding
          # propertyUseId that is associated to the specified meter is also
          # returned, otherwise it is omitted. The meter must already be shared
          # with you or you must have pending share access.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::HierarchyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/hierarchy/get
          def get_id_hierarchy_for_meter(meter_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::HierarchyType, basic_auth: true)
          end

          # Get Meter
          #
          # This web service retrieves information for a specific meter. The
          # meter must already be shared with you.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::MeterType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meter/get
          def get_meter(meter_id)
            request(Net::HTTP::Get, path_for("meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::MeterType, basic_auth: true)
          end

          # Get Meter List
          #
          # This web service retrieves a list of all the meters for a specific
          # property or just the meters that you have access to. The property
          # must already be shared with you.
          #
          # @param property_id [Integer]
          # @param my_access_only [Boolean]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meterList/get
          def get_meter_list(property_id, my_access_only = false)
            request(Net::HTTP::Get, path_for("property", property_id, "meter", "list"), {
              "myAccessOnly" => my_access_only,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get What Changed Meter List
          #
          # This web service returns a list of meters that changed since a user
          # specified date. The list of meters returned are account specific.
          # The returned list only shows meters that you have permission to
          # view. Results are returned in increments of 1,000 per set. Actions
          # that trigger a meter to be included in the returned list may have
          # been performed by any user with access to the meter. A list of user
          # actions that trigger a meter to be included in the returned list can
          # be found {https://energystar-mesa.force.com/PortfolioManager/s/article/Last-Modified-Metrics-What-types-of-edits-trigger-an-update-1600088554500 here}.
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/getWhatChanged/get
          def get_what_changed_meter_list(customer_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("customer", customer_id, "meter", "whatChanged"), {
              "date" => date.strftime("%Y-%m-%d"),
              "nextPageKey" => next_page_key,
              "previousPageKey" => previous_page_key,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get What Changed Meter List for a Specific Property
          #
          # This web service returns a list of meters within a specified
          # property that changed since a user specified date. The list of
          # meters returned are property specific. The returned list only shows
          # meters that you have permission to view. Results are returned in
          # increments of 1,000 per set. Actions that trigger a meter to be
          # included in the returned list may have been performed by any user
          # with access to the meter. A list of user actions that trigger a
          # meter to be included in the returned list can be found {https://energystar-mesa.force.com/PortfolioManager/s/article/Last-Modified-Metrics-What-types-of-edits-trigger-an-update-1600088554500 here}.
          #
          # @param property_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/getWhatChangedPropertyMeter/get
          def get_what_changed_meter_list_for_a_specific_property(property_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("property", property_id, "meter", "whatChanged"), {
              "date" => date.strftime("%Y-%m-%d"),
              "nextPageKey" => next_page_key,
              "previousPageKey" => previous_page_key,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Property Meter Association
      module PropertyMeterAssociation
        # Live Environment
        module Live
          # Get Associated Property Meters
          #
          # This web service returns a list of meters that are associated to a
          # specific property.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::MeterPropertyAssociationListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyAssociation/get
          def get_associated_property_meters(property_id)
            request(Net::HTTP::Get, path_for("association", "property", property_id, "meter"), {}, {}, nil, nil, PortfolioManager::Xml::MeterPropertyAssociationListType, basic_auth: true)
          end

          # Associate Meter to a Property
          #
          # This web service associates a single meter to a property. You must
          # have any of the following sharing permissions:
          # - full access on the property and read only access on the meter
          # - read only access on the property and full access on the meter
          # - full access for both the property and meter
          #
          # Any other meters currently associated to the property are
          # unaffected. Any property representation currently assigned to the
          # property (if any) is unaffected.
          #
          # @param property_id [Integer]
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyAssociationSingle/post
          def associate_meter_to_a_property(property_id, meter_id)
            request(Net::HTTP::Post, path_for("association", "property", property_id, "meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Associate Meters to a Property
          #
          # This web service associates a set of meters to a property based on
          # the set of meters provided in the XML request. If a set of energy
          # meters is only provided then the association is only performed using
          # that set of energy meters and any existing water meter associations
          # are not affected. Similarly, if a set of water meters is only
          # provided then the association is only performed using that set of
          # water meters and any existing energy meter associations are not
          # affected. All submissions overwrite/replace previous settings.
          #
          # @param property_id [Integer]
          # @param meter_property_association_list [PortfolioManager::Xml::MeterPropertyAssociationListType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyAssociation/post
          def associate_meters_to_a_property(property_id, meter_property_association_list)
            request(Net::HTTP::Post, path_for("association", "property", property_id, "meter"), {}, {}, meter_property_association_list, "meterPropertyAssociationList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Disassociate Meter from a Property
          #
          # This web service disassociates a specific meter from a given
          # property.
          #
          # @param property_id [Integer]
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyAssociation/delete
          def disassociate_meter_from_a_property(property_id, meter_id)
            request(Net::HTTP::Delete, path_for("association", "property", property_id, "meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Property Use Meter Assocation
      module PropertyUseMeterAssociation
        # Live Environment
        module Live
          # Get Associated Property Use Meters
          #
          # This web service returns a list of meters that are associated to a
          # specific property use.
          #
          # @param property_use_id [Integer]
          # @return [PortfolioManager::Xml::MeterListType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyUseAssociation/get
          def get_associated_property_use_meters(property_use_id)
            request(Net::HTTP::Get, path_for("association", "propertyUse", property_use_id, "meter"), {}, {}, nil, nil, PortfolioManager::Xml::MeterListType, basic_auth: true)
          end

          # Associate Meter to a Property Use
          #
          # This web service associates a single meter to a property use. You
          # must have any of the following sharing permissions:
          # - full access on the property and read only access on the meter
          # - read only access on the property and full access on the meter
          # - full access for both the property and meter
          #
          # Any other meters currently associated to the property use are
          # unaffected.
          #
          # @param property_use_id [Integer]
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyUseAssociationSingle/post
          def associate_meter_to_a_property_use(property_use_id, meter_id)
            request(Net::HTTP::Post, path_for("association", "propertyUse", property_use_id, "meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Associate Meters to a Property Use
          #
          # This web service associates a set of meters to a property use based
          # on the set of meters provided in the XML request. All submissions
          # overwrite/replace previous settings.
          #
          # @param property_use_id [Integer]
          # @param meter_property_use_association_list [PortfolioManager::Xml::MeterListType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyUseAssociation/post
          def associate_meters_to_a_property_use(property_use_id, meter_property_use_association_list)
            request(Net::HTTP::Post, path_for("association", "propertyUse", property_use_id, "meter"), {}, {}, meter_property_use_association_list, "meterPropertyUseAssociationList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Disassociate Meter from a Property Use
          #
          # This web service disassociates a specific meter from a given
          # property use.
          #
          # @param property_use_id [Integer]
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/propertyUseAssociation/delete
          def disassociate_meter_from_a_property_use(property_use_id, meter_id)
            request(Net::HTTP::Delete, path_for("association", "propertyUse", property_use_id, "meter", meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Consumption Data
      module ConsumptionData
        # Live Environment
        module Live
          # Add Meter Consumption Data
          #
          # This web service adds consumption data to a specific meter based on
          # the information provided in the XML request. It returns the unique
          # identifier to each consumption data entry and a link to the
          # corresponding web service to retrieve it. The meter must already be
          # shared with you and you must have write access to the meter. This
          # web service supports all meter types (i.e., electric, natural gas,
          # water, IT, etc.). Green power information can also be added for
          # renewable energy meter types. Demand tracking is also available for
          # electric grid-purchase meters. A maximum of 120 consumption records
          # is allowed.
          #
          # @param meter_id [Integer]
          # @param meter_data [PortfolioManager::Xml::MeterDataType]
          # @return [PortfolioManager::Xml::MeterDataType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/post
          def add_meter_consumption_data(meter_id, meter_data)
            request(Net::HTTP::Post, path_for("meter", meter_id, "consumptionData"), {}, {}, meter_data, "meterData", PortfolioManager::Xml::MeterDataType, basic_auth: true)
          end

          # Delete Consumption Data
          #
          # This web service deletes a specific consumption data. The
          # corresponding meter must already be shared with you and you must
          # have write access.
          #
          # @param consumption_data_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/delete
          def delete_consumption_data(consumption_data_id)
            request(Net::HTTP::Delete, path_for("consumptionData", consumption_data_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Meter Consumption Data
          #
          # This web service deletes consumption data from a specific meter
          # based on a specified optional date range. The meter must already be
          # shared to you and you must have read write access. This web service
          # supports the following meter types; energy, water, data center IT,
          # drinking/waste water flow. Deleting the consumption data is
          # permanent and cannot be undone.
          #
          # @note If you misspell the "startDate" or "endDate" parameter then
          #   the resulting behavior is equivalent to if the parameter was
          #   omitted. For example, if you run this web service and misspelled
          #   both date range parameters then all of the consumption data for
          #   that meter will be deleted which is the default behavior.
          #
          # @param meter_id [Integer]
          # @param start_date [nil, Date]
          # @param end_date [nil, Date]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/delete
          def delete_meter_consumption_data(meter_id, start_date = nil, end_date = nil)
            request(Net::HTTP::Delete, path_for("meter", meter_id, "consumptionData"), {
              "startDate" => start_date.nil? ? nil : start_date.strftime("%Y-%m-%d"),
              "endDate" => end_date.nil? ? nil : end_date.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Consumption Data
          #
          # This web service updates a specific meter consumption data record
          # based on the information provided in the XML request. The
          # corresponding meter must already be shared with you and you must
          # have write access to the meter.
          #
          # @param consumption_data_id [Integer]
          # @param meter_consumption [PortfolioManager::Xml::MeterConsumptionType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/put
          def edit_consumption_data(consumption_data_id, meter_consumption)
            request(Net::HTTP::Put, path_for("consumptionData", consumption_data_id), {}, {}, meter_consumption, "meterConsumption", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Consumption Data
          #
          # This web service returns the accountId, propertyId, and meterId that
          # correspond to a specific consumption data record. The accountId
          # returned is the Property Data Administrator (PDA). If the specified
          # consumption data record refers to an IT meter or a plant flow meter,
          # then the corresponding propertyUseId that is associated to the meter
          # is also returned, otherwise it is omitted. The corresponding meter
          # must already be shared with you or you must have pending share
          # access.
          #
          # @param consumption_data_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/put
          def get_id_hierarchy_for_consumption_data(consumption_data_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "consumptionData", consumption_data_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Meter Consumption Data
          #
          # This web service retrieves consumption data for a specific meter.
          # The meter must already be shared with you. The consumption data is
          # returned in sets of 120. An optional date range can specified to
          # return a certain set of consumption records.
          #
          # @param meter_id [Integer]
          # @param page [Integer]
          # @param start_date [nil, Date]
          # @param end_date [nil, Date]
          # @return [PortfolioManager::Xml::MeterDataType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionData/get
          def get_meter_consumption_data(meter_id, page = 1, start_date = nil, end_date = nil)
            request(Net::HTTP::Get, path_for("meter", meter_id, "consumptionData"), {
              "page" => page,
              "startDate" => start_date.nil? ? nil : start_date.strftime("%Y-%m-%d"),
              "endDate" => end_date.nil? ? nil : end_date.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::MeterDataType, basic_auth: true)
          end

          # Get What Changed Consumption Data Meter List
          #
          # This web service returns a list of meters that have had their
          # consumption data changed since a user specified date. The list of
          # meters returned are account specific. The returned list only shows
          # meters that you have permission to view. Results are returned in
          # increments of 1,000 per set. Consumption data edits that trigger a
          # meter to be included in the returned list may have been performed by
          # any user with write access to the meter. The list returns links to
          # each meter's consumption data.
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/consumptionDataGetWhatChanged/get
          def get_what_changed_consumption_data_meter_list(customer_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("customer", customer_id, "meter", "consumptionData", "whatChanged"), {
              "date" => date.strftime("%Y-%m-%d"),
              "nextPageKey" => next_page_key,
              "previousPageKey" => previous_page_key,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Waste Data
      module WasteData
        # Live Environment
        module Live
          # Add Meter Waste Data
          #
          # This web service adds waste data to a specific meter based on the
          # information provided in the XML request. It returns the unique
          # identifier to each waste data entry. The meter must already be
          # shared with you and you must have write access to the meter. A
          # maximum of 120 waste data records is allowed.
          #
          # @param meter_id [Integer]
          # @param waste_data_list [PortfolioManager::Xml::WasteMeterDataType]
          # @return [PortfolioManager::Xml::WasteMeterDataType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteData/post
          def add_meter_waste_data(meter_id, waste_data_list)
            request(Net::HTTP::Post, path_for("meter", meter_id, "wasteData"), {}, {}, waste_data_list, "wasteDataList", PortfolioManager::Xml::WasteMeterDataType, basic_auth: true)
          end

          # Delete Waste Data
          #
          # This web service deletes a specific waste data. The corresponding
          # meter must already be shared with you and you must have write
          # access.
          #
          # @param waste_data_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteData/delete
          def delete_waste_data(waste_data_id)
            request(Net::HTTP::Delete, path_for("wasteData", waste_data_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Meter Waste Data
          #
          # This web service deletes waste data from a specified meter based on
          # a specified optional date range. The meter must already be shared to
          # you and you must have read write access. This web service only
          # supports waste meters. Deleting the waste data is permanent and
          # cannot be undone.
          #
          # @note If you misspell the "startDate" or "endDate" parameter then
          #   the resulting behavior is equivalent to if the parameter was
          #   omitted. For example, if you run this web service and misspelled
          #   both date range parameters then all of the waste data for that
          #   meter will be deleted which is the default behavior.
          #
          # @param meter_id [Integer]
          # @param start_date [nil, Date]
          # @param end_date [nil, Date]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/allWasteData/delete
          def delete_meter_waste_data(meter_id, start_date = nil, end_date = nil)
            request(Net::HTTP::Delete, path_for("meter", meter_id, "wasteData"), {
              "startDate" => start_date.nil? ? nil : start_date.strftime("%Y-%m-%d"),
              "endDate" => end_date.nil? ? nil : end_date.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Waste Data
          #
          # This web service updates a specific waste meter data record based on
          # the information provided in the XML request. The corresponding meter
          # must already be shared with you and you must have write access to
          # the meter.
          #
          # @param waste_data_id [Integer]
          # @param waste_data [PortfolioManager::Xml::WasteMeterEntryType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteData/put
          def edit_waste_data(waste_data_id, waste_data)
            request(Net::HTTP::Put, path_for("wasteData", waste_data_id), {}, {}, waste_data, "wasteData", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Waste Data
          #
          # This web service returns the accountId, propertyId, and meterId that
          # correspond to a specific waste data record. The accountId returned
          # is the Property Data Administrator (PDA). The corresponding meter
          # must already be shared with you or you must have pending share
          # access.
          #
          # @param waste_data_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteDataHierarchy/get
          def get_id_hierarchy_for_waste_data(waste_data_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "wasteData", waste_data_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Meter Waste Data
          #
          # This web service retrieves waste data for a specific meter. The
          # meter must already be shared with you. The waste data is returned in
          # sets of 120. An optional date range can be specified to return a
          # certain set of waste data records.
          #
          # @param meter_id [Integer]
          # @param page [Integer]
          # @param start_date [nil, Date]
          # @param end_date [nil, Date]
          # @return [PortfolioManager::Xml::WasteMeterDataType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteData/get
          def get_meter_waste_data(meter_id, page = 1, start_date = nil, end_date = nil)
            request(Net::HTTP::Get, path_for("meter", meter_id, "wasteData"), {
              "page" => page,
              "startDate" => start_date.nil? ? nil : start_date.strftime("%Y-%m-%d"),
              "endDate" => end_date.nil? ? nil : end_date.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::WasteMeterDataType, basic_auth: true)
          end

          # Get What Changed Waste Data Meter List
          #
          # This web service returns a list of waste meters that have had their
          # consumption data changed since a user specified date. The list of
          # waste meters returned are account specific. The returned list only
          # shows waste meters that you have permission to view. Results are
          # returned in increments of 1,000 per set. Waste data edits that
          # trigger a waste meter to be included in the returned list may have
          # been performed by any user with write access to the meter. The list
          # returns links to each meter's waste data.
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/wasteDataGetWhatChanged/get
          def get_what_changed_waste_data_meter_list(customer_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("customer", customer_id, "meter", "wasteData", "whatChanged"), {
              "date" => date.strftime("%Y-%m-%d"),
              "nextPageKey" => next_page_key,
              "previousPageKey" => previous_page_key,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Unique Identifiers
      module UniqueIdentifiers
        # Live Environment
        module Live
          # Add Meter Identifier Value
          #
          # This web service adds a name and value to a specific additional
          # meter identifier for a given meter based on the information provided
          # in the XML request.
          #
          # @param meter_id [Integer]
          # @param additional_identifier [PortfolioManager::Xml::AdditionalIdentifier]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifier/post
          def add_meter_identifier_value(meter_id, additional_identifier)
            request(Net::HTTP::Post, path_for("meter", meter_id, "identifier"), {}, {}, additional_identifier, "additionalIdentifier", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Meter Identifier Value
          #
          # This web service deletes the meter identifier value for a specific
          # meter and meter identifier.
          #
          # @param meter_id [Integer]
          # @param identifier_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifier/delete
          def delete_meter_identifier_value(meter_id, identifier_id)
            request(Net::HTTP::Delete, path_for("meter", meter_id, "identifier", identifier_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Meter Identifier Value
          #
          # This web service updates the meter identifier value for a specific
          # meter based on the information provided in the XML request.
          #
          # @param meter_id [Integer]
          # @param identifier_id [Integer]
          # @param additional_identifier [PortfolioManager::Xml::AdditionalIdentifier]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifier/put
          def edit_meter_identifier_value(meter_id, identifier_id, additional_identifier)
            request(Net::HTTP::Put, path_for("meter", meter_id, "identifier", identifier_id), {}, {}, additional_identifier, "additionalIdentifier", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get All Meter Identifier List
          #
          # This web service retrieves a list of all of the unique identifiers
          # for all meters in a specified property. These identifiers are used
          # to provide additional information on a meter. You must have at least
          # read only access on the meter to view the unique identifiers.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifierList/get
          def get_all_meter_identifier_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "meter", "identifier", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Meter Identifier List
          #
          # This web service retrieves a list of all of the standard and unique
          # identifiers that are currently approved for use by EPA. These
          # identifiers are used to provide additional information on a meter.
          #
          # @return [PortfolioManager::Xml::AdditionalIdentifierTypes, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/meterIdentifierList/get
          def get_meter_identifier_list
            request(Net::HTTP::Get, path_for("meter", "identifier", "list"), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifierTypes, basic_auth: true)
          end

          # Get Meter Identifier Value
          #
          # This web service retrieves the meter identifier value for a specific
          # meter and meter identifier.
          #
          # @param meter_id [Integer]
          # @param identifier_id [Integer]
          # @return [PortfolioManager::Xml::AdditionalIdentifier, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifier/get
          def get_meter_identifier_value(meter_id, identifier_id)
            request(Net::HTTP::Get, path_for("meter", meter_id, "identifier", identifier_id), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifier, basic_auth: true)
          end

          # Get Meter Identifier Value List
          #
          # This web service retrieves a list of meter identifier values for a
          # specific meter specified in the URL.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::AdditionalIdentifiers, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/identifierListForProperty/get
          def get_meter_identifier_value_list(meter_id)
            request(Net::HTTP::Get, path_for("meter", meter_id, "identifier", "list"), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifiers, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Meter Aggregation
      module MeterAggregation
        # Live Environment
        module Live
          # Add Individual Meter to Aggregated Meter
          #
          # This web service adds an individual meter to be included in the
          # total for the aggregate meter. The aggregate meter must already be
          # shared with you and you must have write access.
          #
          # @param meter_id [Integer]
          # @param individual_meter [PortfolioManager::Xml::IndividualMeter]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/individual/post
          def add_individual_meter_to_aggregated_meter(meter_id, individual_meter)
            request(Net::HTTP::Post, path_for("meter", meter_id, "individual"), {}, {}, individual_meter, "individualMeter", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete All Individual Meters of an Aggregate Meter
          #
          # This web service deletes all information of individual meters that
          # are included in the total for the aggregate meter. The aggregate
          # meter must already be shared with you and you must have write
          # access.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/aggregationList/delete
          def delete_all_individual_meters_of_an_aggregate_meter(meter_id)
            request(Net::HTTP::Delete, path_for("meter", meter_id, "individual"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Individual Meter of an Aggregated Meter
          #
          # This web service deletes information for an individual meter that is
          # included in the total for the aggregate meter. The aggregate meter
          # must already be shared with you and you must have write access.
          #
          # @param individual_meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/individual/delete
          def delete_individual_meter_of_an_aggregated_meter(individual_meter_id)
            request(Net::HTTP::Delete, path_for("meter", "individual", individual_meter_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Individual Meter of an Aggregated Meter
          #
          # This web service retrieves information for an individual meter that
          # is included in the total for the aggregate meter. The aggregate
          # meter must already be shared with you.
          #
          # @param individual_meter_id [Integer]
          # @return [PortfolioManager::Xml::IndividualMeter, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/individual/get
          def get_individual_meter_of_an_aggregated_meter(individual_meter_id)
            request(Net::HTTP::Get, path_for("meter", "individual", individual_meter_id), {}, {}, nil, nil, PortfolioManager::Xml::IndividualMeter, basic_auth: true)
          end

          # Get Meter Aggregation Indicator
          #
          # This web service retrieves information on whether the specified
          # meter represents an aggregation of multiple meters or not. It will
          # also include the information that the existing {PortfolioManager::Services::Meter::Meter::Live#get_meter Get Meter}
          # web service returns. The meter must already be shared with you.
          #
          # @note This web service is available because the aggregateMeter
          #   element cannot be added to the existing {PortfolioManager::Services::Meter::Meter::Live#get_meter Get Meter}
          #   web service schema until the 17.0 release (summer 2021). Until
          #   then, this service allows for backwards compatibility and informs
          #   whether the meter is marked as an aggregate or not.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::MeterType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/aggregation/get
          def get_meter_aggregation_indicator(meter_id)
            request(Net::HTTP::Get, path_for("meter", meter_id, "aggregateMeter"), {}, {}, nil, nil, PortfolioManager::Xml::MeterType, basic_auth: true)
          end

          # Get Meter Aggregation List
          #
          # This web service retrieves a list of all individual meters that are
          # aggregated into the specified meter. The meter must already be
          # shared with you.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/aggregationList/get
          def get_meter_aggregation_list(meter_id)
            request(Net::HTTP::Get, path_for("meter", meter_id, "individual", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Update Individual Meter of an Aggregated Meter
          #
          # This web service updates information for an individual meter that is
          # included in the total for the aggregate meter. The aggregate meter
          # must already be shared with you and you must have write access.
          #
          # @param individual_meter_id [Integer]
          # @param individual_meter [PortfolioManager::Xml::IndividualMeter]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/individual/put
          def update_individual_meter_of_aggregated_meter(individual_meter_id, individual_meter)
            request(Net::HTTP::Put, path_for("meter", "individual", individual_meter_id), {}, {}, individual_meter, "individualMeter", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Miscellaneous
      module Miscellaneous
        # Live Environment
        module Live
          # Get Meter Custom Field Values
          #
          # This web service returns a list of custom fields and their values
          # for a specific meter.
          #
          # @param meter_id [Integer]
          # @return [PortfolioManager::Xml::CustomFieldList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/meter/customFieldValues/get
          def get_meter_custom_field_values(meter_id)
            request(Net::HTTP::Get, path_for("meter", meter_id, "customFieldList"), {}, {}, nil, nil, PortfolioManager::Xml::CustomFieldList, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::Meter::Meter::Live
          include PortfolioManager::Services::Meter::PropertyMeterAssociation::Live
          include PortfolioManager::Services::Meter::PropertyUseMeterAssociation::Live
          include PortfolioManager::Services::Meter::ConsumptionData::Live
          include PortfolioManager::Services::Meter::WasteData::Live
          include PortfolioManager::Services::Meter::UniqueIdentifiers::Live
          include PortfolioManager::Services::Meter::MeterAggregation::Live
          include PortfolioManager::Services::Meter::Miscellaneous::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Meter::Meter::Test
          include PortfolioManager::Services::Meter::PropertyMeterAssociation::Test
          include PortfolioManager::Services::Meter::PropertyUseMeterAssociation::Test
          include PortfolioManager::Services::Meter::ConsumptionData::Test
          include PortfolioManager::Services::Meter::WasteData::Test
          include PortfolioManager::Services::Meter::UniqueIdentifiers::Test
          include PortfolioManager::Services::Meter::MeterAggregation::Test
          include PortfolioManager::Services::Meter::Miscellaneous::Test
        end
      end
    end
  end
end
