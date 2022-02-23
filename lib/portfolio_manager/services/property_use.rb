require "net/http"

module PortfolioManager
  module Services
    # Property Use Services
    #
    # The Property Use Services allows you to define how a property will be used
    # and operated. These services allow you to add, update, and delete the use
    # types of a property as well as manage their operating characteristics.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse
    module PropertyUse
      # Property Use
      module PropertyUse
        # Live Environment
        module Live
          # Add Property Use
          #
          # This web service creates a property use under a specified property
          # based on the information provided in the XML request. It returns the
          # unique identifier to the newly created property use and a link to
          # the corresponding web service to retrieve it. To specify the use of
          # default values, just omit the "value" XML tag for that particular
          # use detail information from the XML request or omit the entire
          # reference to the particular use detail information from the XML
          # request altogether.
          #
          # @param property_id [Integer]
          # @param property_use [PortfolioManager::Xml::BankBranchType, PortfolioManager::Xml::BarracksType, PortfolioManager::Xml::CollegeUniversityType, PortfolioManager::Xml::ConvenienceStoreWithGasStationType, PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType, PortfolioManager::Xml::CourthouseType, PortfolioManager::Xml::DataCenterType, PortfolioManager::Xml::DistributionCenterType, PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType, PortfolioManager::Xml::FinancialOfficeType, PortfolioManager::Xml::FoodSalesType, PortfolioManager::Xml::HospitalType, PortfolioManager::Xml::HotelType, PortfolioManager::Xml::IceCurlingRinkType, PortfolioManager::Xml::IndoorArenaType, PortfolioManager::Xml::K12SchoolType, PortfolioManager::Xml::MedicalOfficeType, PortfolioManager::Xml::MultifamilyHousingType, PortfolioManager::Xml::NonRefrigeratedWarehouseType, PortfolioManager::Xml::OfficeType, PortfolioManager::Xml::OtherStadiumType, PortfolioManager::Xml::ParkingType, PortfolioManager::Xml::RefrigeratedWarehouseType, PortfolioManager::Xml::ResidenceHallDormitoryType, PortfolioManager::Xml::ResidentialCareFacilityType, PortfolioManager::Xml::RetailType, PortfolioManager::Xml::SelfStorageFacilityType, PortfolioManager::Xml::SeniorLivingCommunityType, PortfolioManager::Xml::SingleFamilyHomeType, PortfolioManager::Xml::StadiumClosedType, PortfolioManager::Xml::StadiumOpenType, PortfolioManager::Xml::SupermarketType, PortfolioManager::Xml::SwimmingPoolType, PortfolioManager::Xml::WastewaterTreatmentPlantType, PortfolioManager::Xml::WholesaleClubSupercenterType, PortfolioManager::Xml::WorshipFacilityType]
          # @param elename [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/propertyUse/post
          def add_property_use(property_id, property_use, elename = nil)
            request(Net::HTTP::Post, path_for("property", property_id, "propertyUse"), {}, {}, property_use, elename, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Property Use
          #
          # This web service deletes a specific property use. The corresponding
          # property must already be shared with you.
          #
          # @param property_use_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/propertyUse/delete
          def delete_property_use(property_use_id)
            request(Net::HTTP::Delete, path_for("propertyUse", property_use_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Property Use
          #
          # This web service updates a specific property use under a given
          # property based on the information provided in the XML request. Only
          # the name of the property use can be updated with this web service.
          # It returns the unique identifier to the property use and a link to
          # the corresponding web service to retrieve it. The corresponding
          # property must already be shared with you.
          #
          # @param property_use_id [Integer]
          # @param property_use [PortfolioManager::Xml::PropertyUse]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/propertyUse/put
          def edit_property_use(property_use_id, property_use)
            request(Net::HTTP::Put, path_for("propertyUse", property_use_id), {}, {}, property_use, "propertyUse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Property Use
          #
          # This web service returns the accountId and propertyId that
          # corresponds to a specific property use. The accountId returned is
          # the Property Data Administrator (PDA). The corresponding property
          # must already be shared with you or you must have pending share
          # access.
          #
          # @param property_use_id [Integer]
          # @return [PortfolioManager::Xml::HierarchyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/hierarchy/get
          def get_id_hierarchy_for_property_use(property_use_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "propertyUse", property_use_id), {}, {}, nil, nil, PortfolioManager::Xml::HierarchyType, basic_auth: true)
          end

          # Get Property Use
          #
          # This web service returns information for a specific property use.
          # The information includes general data about the property use itself
          # and its most current operating characteristics information. If the
          # "value" XML tag is not present, then no value was initially provided
          # for that operating characteristic. The corresponding property must
          # already be shared with you.
          #
          # @param property_use_id [Integer]
          # @param klass [nil, Class]
          # @return [PortfolioManager::Xml::BankBranchType, PortfolioManager::Xml::BarracksType, PortfolioManager::Xml::CollegeUniversityType, PortfolioManager::Xml::ConvenienceStoreWithGasStationType, PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType, PortfolioManager::Xml::CourthouseType, PortfolioManager::Xml::DataCenterType, PortfolioManager::Xml::DistributionCenterType, PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType, PortfolioManager::Xml::FinancialOfficeType, PortfolioManager::Xml::FoodSalesType, PortfolioManager::Xml::HospitalType, PortfolioManager::Xml::HotelType, PortfolioManager::Xml::IceCurlingRinkType, PortfolioManager::Xml::IndoorArenaType, PortfolioManager::Xml::K12SchoolType, PortfolioManager::Xml::MedicalOfficeType, PortfolioManager::Xml::MultifamilyHousingType, PortfolioManager::Xml::NonRefrigeratedWarehouseType, PortfolioManager::Xml::OfficeType, PortfolioManager::Xml::OtherStadiumType, PortfolioManager::Xml::ParkingType, PortfolioManager::Xml::RefrigeratedWarehouseType, PortfolioManager::Xml::ResidenceHallDormitoryType, PortfolioManager::Xml::ResidentialCareFacilityType, PortfolioManager::Xml::RetailType, PortfolioManager::Xml::SelfStorageFacilityType, PortfolioManager::Xml::SeniorLivingCommunityType, PortfolioManager::Xml::SingleFamilyHomeType, PortfolioManager::Xml::StadiumClosedType, PortfolioManager::Xml::StadiumOpenType, PortfolioManager::Xml::SupermarketType, PortfolioManager::Xml::SwimmingPoolType, PortfolioManager::Xml::WastewaterTreatmentPlantType, PortfolioManager::Xml::WholesaleClubSupercenterType, PortfolioManager::Xml::WorshipFacilityType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/propertyUse/get
          def get_property_use(property_use_id, klass = nil)
            request(Net::HTTP::Get, path_for("propertyUse", property_use_id), {}, {}, nil, nil, klass, basic_auth: true)
          end

          # Get Property Use List
          #
          # This web service returns the list of property uses for a specific
          # property. The property must already be shared with you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/propertyUseList/get
          def get_property_use_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "propertyUse", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get What Changed Property Use List
          #
          # This web service returns a list of property uses that had their name
          # or use details modified since a user specified date. The list of
          # property uses returned are account specific. Results are returned in
          # increments of 1,000 per set. The returned list only shows property
          # uses that you have permission to view. Actions that trigger a
          # property use to be included in the returned list may have been
          # performed by any user with property use access. Changes that result
          # in a property use being returned are as follows:
          # - a use detail within the property use is corrected or updated with
          #   a new historical record
          # - the name of the property use is edited
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/getWhatChanged/get
          def get_what_changed_property_use_list(customer_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("customer", customer_id, "propertyUse", "whatChanged"), {
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

      # Use Details
      module UseDetails
        # Live Environment
        module Live
          # Edit Use Details
          #
          # This web service updates a specific set of use details based on the
          # information provided in the XML request. The update is performed by
          # creating a revision history. It returns the unique identifier to the
          # use details and a link to the corresponding web service to retrieve
          # it. To specify the use of default values, just omit the "value" XML
          # tag for that particular use detail information from the XML request
          # or omit the entire reference to the particular use detail
          # information from the XML request altogether.
          #
          # @param property_use_id [Integer]
          # @param use_detail [PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType, PortfolioManager::Xml::ClearHeightUnitsType, PortfolioManager::Xml::CoolingEquipmentRedundancyType, PortfolioManager::Xml::GrossFloorAreaType, PortfolioManager::Xml::HoursPerDayGuestsOnsiteType, PortfolioManager::Xml::ItEnergyConfigurationType, PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType, PortfolioManager::Xml::LinksType, PortfolioManager::Xml::MonthsInUseType, PortfolioManager::Xml::NumberOfWeekdaysType, PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType, PortfolioManager::Xml::OnsiteLaundryType, PortfolioManager::Xml::OptionalFloorAreaType, PortfolioManager::Xml::OwnedByType, PortfolioManager::Xml::PercentCooledType, PortfolioManager::Xml::PercentHeatedType, PortfolioManager::Xml::PercentOfficeCooledType, PortfolioManager::Xml::PercentOfficeHeatedType, PortfolioManager::Xml::PlantDesignFlowRateType, PortfolioManager::Xml::PoolSizeType, PortfolioManager::Xml::PoolType, PortfolioManager::Xml::ResidentPopulationType, PortfolioManager::Xml::UpsSystemRedundancyType, PortfolioManager::Xml::UseDecimalType, PortfolioManager::Xml::UseIntegerType, PortfolioManager::Xml::UseStringType, PortfolioManager::Xml::UseYesNoType]
          # @param elename [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetails/post
          def edit_use_details(property_use_id, use_detail, elename = nil)
            request(Net::HTTP::Post, path_for("propertyUse", property_use_id, "useDetails"), {}, {}, use_detail, elename, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Use Details - Correction
          #
          # This web service updates a specific set of use details based on the
          # information provided in the XML request. The update is performed as
          # a correction. It returns the unique identifier to the use details
          # and a link to the corresponding web service to retrieve it. The
          # corresponding property must already be shared with you. To specify
          # the use of default values, just omit the "value" XML tag for that
          # particular use detail information from the XML request or omit the
          # entire reference to the particular use detail information from the
          # XML request altogether.
          #
          # @param use_detail_id [Integer]
          # @param use_detail [PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType, PortfolioManager::Xml::ClearHeightUnitsType, PortfolioManager::Xml::CoolingEquipmentRedundancyType, PortfolioManager::Xml::GrossFloorAreaType, PortfolioManager::Xml::HoursPerDayGuestsOnsiteType, PortfolioManager::Xml::ItEnergyConfigurationType, PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType, PortfolioManager::Xml::LinksType, PortfolioManager::Xml::MonthsInUseType, PortfolioManager::Xml::NumberOfWeekdaysType, PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType, PortfolioManager::Xml::OnsiteLaundryType, PortfolioManager::Xml::OptionalFloorAreaType, PortfolioManager::Xml::OwnedByType, PortfolioManager::Xml::PercentCooledType, PortfolioManager::Xml::PercentHeatedType, PortfolioManager::Xml::PercentOfficeCooledType, PortfolioManager::Xml::PercentOfficeHeatedType, PortfolioManager::Xml::PlantDesignFlowRateType, PortfolioManager::Xml::PoolSizeType, PortfolioManager::Xml::PoolType, PortfolioManager::Xml::ResidentPopulationType, PortfolioManager::Xml::UpsSystemRedundancyType, PortfolioManager::Xml::UseDecimalType, PortfolioManager::Xml::UseIntegerType, PortfolioManager::Xml::UseStringType, PortfolioManager::Xml::UseYesNoType]
          # @param elename [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetails/put
          def edit_use_details_correction(use_detail_id, use_detail, elename = nil)
            request(Net::HTTP::Put, path_for("useDetails", use_detail_id), {}, {}, use_detail, elename, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Use Detail
          #
          # This web service returns the accountId, propertyId, and
          # propertyUseId that corresponds to a specific use detail record. The
          # accountId returned is the Property Data Administrator (PDA). The
          # corresponding property must already be shared with you or you must
          # have pending share access.
          #
          # @param use_detail_id [Integer]
          # @return [PortfolioManager::Xml::HierarchyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetailsHierarchy/get
          def get_id_hierarchy_for_use_detail(use_detail_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "useDetails", use_detail_id), {}, {}, nil, nil, PortfolioManager::Xml::HierarchyType, basic_auth: true)
          end

          # Get Use Details
          #
          # This web service retrieves specific use detail information for a
          # given use detail. The corresponding property must already be shared
          # with you.
          #
          # @param use_detail_id [Integer]
          # @param klass [nil, Class]
          # @return [PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType, PortfolioManager::Xml::ClearHeightUnitsType, PortfolioManager::Xml::CoolingEquipmentRedundancyType, PortfolioManager::Xml::GrossFloorAreaType, PortfolioManager::Xml::HoursPerDayGuestsOnsiteType, PortfolioManager::Xml::ItEnergyConfigurationType, PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType, PortfolioManager::Xml::LinksType, PortfolioManager::Xml::MonthsInUseType, PortfolioManager::Xml::NumberOfWeekdaysType, PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType, PortfolioManager::Xml::OnsiteLaundryType, PortfolioManager::Xml::OptionalFloorAreaType, PortfolioManager::Xml::OwnedByType, PortfolioManager::Xml::PercentCooledType, PortfolioManager::Xml::PercentHeatedType, PortfolioManager::Xml::PercentOfficeCooledType, PortfolioManager::Xml::PercentOfficeHeatedType, PortfolioManager::Xml::PlantDesignFlowRateType, PortfolioManager::Xml::PoolSizeType, PortfolioManager::Xml::PoolType, PortfolioManager::Xml::ResidentPopulationType, PortfolioManager::Xml::UpsSystemRedundancyType, PortfolioManager::Xml::UseDecimalType, PortfolioManager::Xml::UseIntegerType, PortfolioManager::Xml::UseStringType, PortfolioManager::Xml::UseYesNoType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetails/get
          def get_use_details(use_detail_id, klass = nil)
            request(Net::HTTP::Get, path_for("useDetails", use_detail_id), {}, {}, nil, nil, klass, basic_auth: true)
          end

          # Get Use Details Revision History
          #
          # This web service retrieves the use details revision history for a
          # specific property use. The corresponding property must be already
          # shared with you.
          #
          # @param property_use_id [Integer]
          # @param current_as_of_start [Date]
          # @param current_as_of_end [Date]
          # @return [PortfolioManager::Xml::UseDetails, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetailsRevisions/get
          def get_use_details_revision_history(property_use_id, current_as_of_start, current_as_of_end)
            request(Net::HTTP::Get, path_for("propertyUse", property_use_id, "useDetailsRevisions"), {
              "currentAsOfStart" => current_as_of_start.strftime("%Y-%m-%d"),
              "currentAsOfEnd" => current_as_of_end.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::UseDetails, basic_auth: true)
          end

          # Get What Changed Property Use List (from use detail changes only)
          #
          # This web service returns a list of property uses that have had their
          # use details changed since a user specified date. The list of
          # property uses returned are account specific. Results are returned in
          # increments of 1,000 per set. The returned list only shows property
          # uses that you have permission to view. Actions that trigger a
          # property use to be included in the returned list may have been
          # performed by any user with permission to edit the property use
          # details. A property use is displayed if it's corresponding use
          # details are corrected, or updated with a new historical record.
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/propertyUse/useDetailsGetWhatChanged/get
          def get_what_changed_property_use_list_from_use_detail_changes_only(customer_id, date)
            request(Net::HTTP::Get, path_for("customer", customer_id, "useDetails", "whatChanged"), {
              "date" => date.strftime("%Y-%m-%d"),
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Property Use Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::PropertyUse::PropertyUse::Live
          include PortfolioManager::Services::PropertyUse::UseDetails::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::PropertyUse::PropertyUse::Test
          include PortfolioManager::Services::PropertyUse::UseDetails::Test
        end
      end
    end
  end
end
