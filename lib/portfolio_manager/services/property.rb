require "net/http"

module PortfolioManager
  module Services
    # Property Services
    #
    # The Property Services allow you to manage properties and buildings within
    # Portfolio Manager. You must be already connected to your customers to be
    # able to manage their properties.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/property
    module Property
      # Property
      module Property
        # Live Environment
        module Live
          # Add Property
          #
          # This web service creates a property for a specific Portfolio Manager
          # user based on the information provided in the XML request and
          # establishes all of the necessary sharing permissions between you and
          # the Portfolio Manager user. It returns the unique identifier to the
          # newly created property and a link to the corresponding web service
          # to retrieve it.
          #
          # @param account_id [Integer]
          # @param property [PortfolioManager::Xml::PropertyType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/property/post
          def add_property(account_id, property)
            request(Net::HTTP::Post, path_for("account", account_id, "property"), {}, {}, property, "property", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Property
          #
          # This web service deletes a specified property. The property must
          # already be shared with you. All associated meters and buildings are
          # also deleted.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property
          def delete_property(property_id)
            request(Net::HTTP::Delete, path_for("property", property_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Property
          #
          # This web service updates a property based on the information
          # provided in the XML request. The property must already be shared
          # with you. The service returns the unique identifier to the updated
          # property and a link to the corresponding web service to retrieve it.
          #
          # @param property_id [Integer]
          # @param property [PortfolioManager::Xml::PropertyType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/property/put
          def edit_property(property_id, property)
            request(Net::HTTP::Put, path_for("property", property_id), {}, {}, property, "property", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get ID Hierarchy for Property
          #
          # This web service returns the accountId that corresponds to a
          # specific property. The accountId returned is the Property Data
          # Administrator (PDA). The property must already be shared with you or
          # you must have pending share access. If the property is a child
          # property, this web service will not provide its parent property.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::HierarchyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property
          def get_id_hierarchy_for_property(property_id)
            request(Net::HTTP::Get, path_for("idHierarchy", "property", property_id), {}, {}, nil, nil, PortfolioManager::Xml::HierarchyType, basic_auth: true)
          end

          # Get Property
          #
          # This web service retrieves information for a specific property. The
          # property must already be shared with you. This service can also be
          # used for to retrieve information on a building.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::PropertyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/property/get
          def get_property(property_id)
            request(Net::HTTP::Get, path_for("property", property_id), {}, {}, nil, nil, PortfolioManager::Xml::PropertyType, basic_auth: true)
          end

          # Get Property List
          #
          # This web service returns a list of properties for a specific
          # customer that are shared with you. The properties returned may have
          # been shared from other contacts to the specified accountId. The
          # properties may also be owned by the specified accountId.
          #
          # @param account_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyList/get
          def get_property_list(account_id)
            request(Net::HTTP::Get, path_for("account", account_id, "property", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get What Changed Property List
          #
          # This web service returns a list of properties that changed since a
          # user specified date. The list of properties returned are account
          # specific. Results are returned in increments of 1,000 per set. The
          # returned list only shows properties that you have permission to
          # view. Actions that trigger a property to be included in the returned
          # list may have been performed by any user with property access. A
          # list of user actions that trigger a property to be included in the
          # returned list can be found {https://energystar-mesa.force.com/PortfolioManager/s/article/Last-Modified-Metrics-What-types-of-edits-trigger-an-update-1600088554500 here}.
          #
          # @param customer_id [Integer]
          # @param date [Date]
          # @param next_page_key [nil, String]
          # @param previous_page_key [nil, String]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/getWhatChanged/get
          def get_what_changed_property_list(customer_id, date, next_page_key = nil, previous_page_key = nil)
            request(Net::HTTP::Get, path_for("customer", customer_id, "property", "whatChanged"), {
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

      # Design
      module Design
        # Live Environment
        module Live
          # Edit Design
          #
          # This web service updates the design characteristics based on the
          # information provided in the XML request for a specified property
          # that already exists. It overwrites all previously existing design
          # characteristics. The property must already be shared with you.
          #
          # @param property_id [Integer]
          # @param design [PortfolioManager::Xml::DesignBaseType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/design/put
          def edit_design(property_id, design)
            request(Net::HTTP::Put, path_for("property", property_id, "design"), {}, {}, design, "design", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Design
          #
          # This web service retrieves the design characteristics for a
          # specified property. The property must already be shared with you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::DesignBaseType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/design/get
          def get_design(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "design"), {}, {}, nil, nil, PortfolioManager::Xml::DesignBaseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Electric Distribution Utility
      module ElectricDistributionUtility
        # Live Environment
        module Live
          # Edit Property EDU
          #
          # This web service sets a specified electric distribution utility
          # (EDU) for a given property. The property must be shared with you.
          #
          # @param property_id [Integer]
          # @param edu_code [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/edu/put
          def edit_property_edu(property_id, edu_code)
            request(Net::HTTP::Put, path_for("property", property_id, "edu", edu_code), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Property EDU List
          #
          # This web service returns a list of electric distribution utilities
          # (EDU) that identifies the regional power grid for a specific
          # property. The preferred and currently assigned electric distribution
          # utility to your property is also indicated in the list.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::EduList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/eduList/get
          def get_property_edu_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "edu", "list"), {}, {}, nil, nil, PortfolioManager::Xml::EduList, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Power Generation Plant
      module PowerGenerationPlant
        # Live Environment
        module Live
          # Delete Property PGP
          #
          # This web service removes the currently assigned power generation
          # plant (PGP) from the specified property. After the call is
          # completed, the property does not have a power generation plant
          # assigned to it. The property must be shared with you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/pgp/delete
          def delete_property_pgp(property_id)
            request(Net::HTTP::Delete, path_for("property", property_id, "pgp"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Property PGP
          #
          # This web service sets a specified power generation plant (PGP) for a
          # given property. The property must be shared with you.
          #
          # @param property_id [Integer]
          # @param plant_code [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/pgp/put
          def edit_property_pgp(property_id, plant_code)
            request(Net::HTTP::Put, path_for("property", property_id, "pgp", plant_code), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Property PGP List
          #
          # This web service returns a list of power generation plants (PGP)
          # that are within the vicinity of a specific property. The property
          # must be shared with you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::PgpList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/pgpList/get
          def get_property_pgp_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "pgp", "list"), {}, {}, nil, nil, PortfolioManager::Xml::PgpList, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # International Weather Station
      module InternationalWeatherStation
        # Live Environment
        module Live
          # Edit Property International Weather Station
          #
          # This web service sets a specified international weather station for
          # a given property. The property cannot be located in the US or CA to
          # set an international weather station. US and CA weather stations are
          # assigned automatically based on the entered postal code. You must
          # have read/write access to set the international weather station.
          #
          # @param property_id [Integer]
          # @param international_weather_station_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/internationalWeatherStation/put
          def edit_property_international_weather_station(property_id, international_weather_station_id)
            request(Net::HTTP::Put, path_for("property", property_id, "internationalWeatherStation", international_weather_station_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get International Weather Station List
          #
          # This web service returns a list of international weather stations
          # for a specified country code. The country code follows the
          # International Organization for Standardization (ISO 3166).
          #
          # @param page [Integer]
          # @param country [nil, String]
          # @return [PortfolioManager::Xml::InternationalWeatherStationList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/internationalWeatherStationList/get
          def get_international_weather_station_list(page = 1, country = nil)
            request(Net::HTTP::Get, path_for("property", "internationalWeatherStation", "list"), {
              "page" => page,
              "country" => country,
            }, {}, nil, nil, PortfolioManager::Xml::InternationalWeatherStationList, basic_auth: true)
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
          # Add Property Identifier Value
          #
          # This web service adds a name and value to a specific additional
          # property identifier for a given property based on the information
          # provided in the XML request.
          #
          # @param property_id [Integer]
          # @param additional_identifier [PortfolioManager::Xml::AdditionalIdentifier]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/identifier/post
          def add_property_identifier_value(property_id, additional_identifier)
            request(Net::HTTP::Post, path_for("property", property_id, "identifier"), {}, {}, additional_identifier, "additionalIdentifier", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Property Identifier Value
          #
          # This web service deletes the property identifier value for a
          # specific property and property identifier.
          #
          # @param property_id [Integer]
          # @param identifier_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/identifier/delete
          def delete_property_identifier_value(property_id, identifier_id)
            request(Net::HTTP::Delete, path_for("property", property_id, "identifier", identifier_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Property Identifier Value
          #
          # This web service updates the property identifier value for a
          # specific property based on the information provided in the XML
          # request.
          #
          # @param property_id [Integer]
          # @param identifier_id [Integer]
          # @param additional_identifier [PortfolioManager::Xml::AdditionalIdentifier]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/identifier/put
          def edit_property_identifier_value(property_id, identifier_id, additional_identifier)
            request(Net::HTTP::Put, path_for("property", property_id, "identifier", identifier_id), {}, {}, additional_identifier, "additionalIdentifier", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Property Identifier List
          #
          # This web service retrieves a list of all of the standard and unique
          # identifiers that are currently approved for use by EPA. These
          # identifiers are used to provide additional information on a
          # property.
          #
          # @return [PortfolioManager::Xml::AdditionalIdentifierTypes, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyIdentifierList/get
          def get_property_identifier_list
            request(Net::HTTP::Get, path_for("property", "identifier", "list"), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifierTypes, basic_auth: true)
          end

          # Get Property Identifier Value
          #
          # This web service retrieves the property identifier value for a
          # specific property and property identifier.
          #
          # @param property_id [Integer]
          # @param identifier_id [Integer]
          # @return [PortfolioManager::Xml::AdditionalIdentifier, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/identifier/get
          def get_property_identifier_value(property_id, identifier_id)
            request(Net::HTTP::Get, path_for("property", property_id, "identifier", identifier_id), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifier, basic_auth: true)
          end

          # Get Property Identifier Value List
          #
          # This web service retrieves a list of property identifier values for
          # a specific property specified in the URL.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::AdditionalIdentifiers, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/identifierList/get
          def get_property_identifier_value_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "identifier", "list"), {}, {}, nil, nil, PortfolioManager::Xml::AdditionalIdentifiers, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Verification Information
      module VerificationInformation
        # Live Environment
        module Live
          # Add Property Verification Information
          #
          # This web service adds verification information for a given property
          # based on the information provided in the XML request.
          #
          # @param property_id [Integer]
          # @param verification [PortfolioManager::Xml::Verification]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyVerification/post
          def add_property_verification_information(property_id, verification)
            request(Net::HTTP::Post, path_for("property", property_id, "verification"), {}, {}, verification, "verification", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Add Property Verification Professional Designation Information
          #
          # This web service adds a specific professional designation to the
          # verification information for a given property based on the
          # information provided in the XML request. The property must have
          # existing verification information.
          #
          # @param property_id [Integer]
          # @param designation_type_id [Integer]
          # @param license_list [PortfolioManager::Xml::LicenseList]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationType/post
          def add_property_verification_professional_designation_information(property_id, designation_type_id, license_list)
            request(Net::HTTP::Post, path_for("property", property_id, "verification", "professionalDesignation", designation_type_id), {}, {}, license_list, "licenseList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Property Verification Information
          #
          # This web service deletes the verification information for a given
          # property.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyVerification/delete
          def delete_property_verification_information(property_id)
            request(Net::HTTP::Delete, path_for("property", property_id, "verification"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Property Verification Professional Designation Information
          #
          # This web service deletes all of the professional designation portion
          # of the verification information for a specific property specified in
          # the URL.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignation/delete
          def delete_property_verification_professional_designation_information(property_id)
            request(Net::HTTP::Delete, path_for("property", property_id, "verification", "professionalDesignation"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Specific Professional Designation License from Property's
          # Verification Information
          #
          # This web service deletes a specific professional designation license
          # from a given property's verification information. Any existing
          # licenses under the specific professional designation are re-indexed.
          #
          # @param property_id [Integer]
          # @param designation_type_id [Integer]
          # @param index [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationTypeLicense/delete
          def delete_specific_professional_designation_license_from_property_verification_information(property_id, designation_type_id, index)
            request(Net::HTTP::Delete, path_for("property", property_id, "verification", "professionalDesignation", designation_type_id, index), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Specific Professional Designation Type From Property's
          # Verification Information
          #
          # This web service deletes a specific professional designation type
          # and its licenses from a given property's verification information.
          #
          # @param property_id [Integer]
          # @param designation_type_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationType/delete
          def delete_specific_professional_designation_type_from_property_verification_information(property_id, designation_type_id)
            request(Net::HTTP::Delete, path_for("property", property_id, "verification", "professionalDesignation", designation_type_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Professional Designation Types List
          #
          # @return [PortfolioManager::Xml::ProfessionalDesignationList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationTypeList/get
          def get_professional_designation_types_list
            request(Net::HTTP::Get, path_for("property", "professionalDesignation", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ProfessionalDesignationList, basic_auth: true)
          end

          # Get Property Verification Information
          #
          # This web service retrieves verification information for a specific
          # property specified in the URL.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::Verification, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyVerification/get
          def get_property_verification_information(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "verification"), {}, {}, nil, nil, PortfolioManager::Xml::Verification, basic_auth: true)
          end

          # Get Property Verification Professional Designation Information
          #
          # This web service retrieves the professional designation portion of
          # the verification information for a specific property specified in
          # the URL.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ProfessionalDesignationList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignation/get
          def get_property_verification_professional_designation_information(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "verification", "professionalDesignation"), {}, {}, nil, nil, PortfolioManager::Xml::ProfessionalDesignationList, basic_auth: true)
          end

          # Update Property Verification Information
          #
          # This web service updates verification information for a given
          # property based on the information provided in the XML request.
          #
          # @param property_id [Integer]
          # @param verification [PortfolioManager::Xml::Verification]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/propertyVerification/put
          def update_property_verification_information(property_id, verification)
            request(Net::HTTP::Put, path_for("property", property_id, "verification"), {}, {}, verification, "verification", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Update Property Verification Professional Designation Information
          #
          # This web service updates a specific professional designation and its
          # licenses for a given property's verification information by deleting
          # all of the licenses for the specific professional designation and
          # replacing the licenses with the information provided in the XML
          # request. The property must have existing verification information.
          #
          # @param property_id [Integer]
          # @param designation_type_id [Integer]
          # @param license_list [PortfolioManager::Xml::LicenseList]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationType/put
          def update_property_verification_professional_designation_information(property_id, designation_type_id, license_list)
            request(Net::HTTP::Put, path_for("property", property_id, "verification", "professionalDesignation", designation_type_id), {}, {}, license_list, "licenseList", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Update Specific Professional Designation License of Property's
          # Verification Information
          #
          # This web service updates a specific professional designation license
          # for a given property's verification information based on the
          # information provided in the XML request. The property must have
          # existing verification information.
          #
          # @param property_id [Integer]
          # @param designation_type_id [Integer]
          # @param index [Integer]
          # @param license [PortfolioManager::Xml::License]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/professionalDesignationTypeLicense/put
          def update_specific_professional_designation_license_of_property_verification_information(property_id, designation_type_id, index, license)
            request(Net::HTTP::Put, path_for("property", property_id, "verification", "professionalDesignation", designation_type_id, index), {}, {}, license, "license", PortfolioManager::Xml::ResponseType, basic_auth: true)
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
          # Add Energy Performance Project
          #
          # This web service creates an energy performance project for a
          # specific property based on the information provided in the XML
          # request. The corresponding property must already be shared with you.
          # The service returns the unique identifier to the newly created
          # energy performance project and a link to the corresponding web
          # service to retrieve it.
          #
          # @param property_id [Integer]
          # @param energy_performance_project [PortfolioManager::Xml::EnergyPerformanceProjectType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/energyprojects/post
          def add_energy_performance_project(property_id, energy_performance_project)
            request(Net::HTTP::Post, path_for("property", property_id, "energyPerformanceProject"), {}, {}, energy_performance_project, "energyPerformanceProject", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Energy Performance Project
          #
          # This web service deletes a specified energy project project. The
          # corresponding property must already be shared to you.
          #
          # @param energy_performance_project_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/energyprojects/delete
          def delete_energy_performance_project(energy_performance_project_id)
            request(Net::HTTP::Delete, path_for("energyPerformanceProject", energy_performance_project_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Billboard Setting at Property Level for Account
          #
          # This web service sets a desired "billboard" metric for the
          # authenticated user's account and a specified property. After set,
          # the front-end application will display the chosen metric in the
          # billboard. The billboard is shown in the upper-right section of each
          # property. You must have at least READ access to the property.
          # Individual property level settings will be cleared if account level
          # billboard setting changes are made.
          #
          # For more information on account level billboard metric settings, see
          # the {PortfolioManager::Services::BasicAccount::Accounts::Live#edit_account PUT /account/(accountId)}
          # and {PortfolioManager::Services::BasicAccount::Accounts::Live#edit_customer PUT /customer/(customerId)}
          # documentation sections.
          #
          # @param property_id [Integer]
          # @param billboard_metric_setting [PortfolioManager::Xml::BillboardMetricSetting]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/accountBillboardMetricSetting/put
          def edit_billboard_setting_at_property_level_for_account(property_id, billboard_metric_setting)
            request(Net::HTTP::Put, path_for("property", property_id, "billboardMetricSetting"), {}, {}, billboard_metric_setting, "billboardMetricSetting", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Billboard Setting at Property Level for Customer
          #
          # This web service sets a desired "billboard" metric for a specified
          # account and property combination. After set, the specified front-end
          # customer user will see the selected metric shown in the billboard.
          # The billboard is displayed in the upper-right section of each
          # property. The customer's property must be shared with you with at
          # least READ_WRITE permissions. Individual property level settings
          # will be cleared if account level billboard setting changes are made.
          #
          # For more information on account level billboard metric settings, see
          # the {PortfolioManager::Services::BasicAccount::Accounts::Live#edit_account PUT /account/(accountId)}
          # and {PortfolioManager::Services::BasicAccount::Accounts::Live#edit_customer PUT /customer/(customerId)}
          # documentation sections.
          #
          # @param customer_id [Integer]
          # @param property_id [Integer]
          # @param billboard_metric_setting [PortfolioManager::Xml::BillboardMetricSetting]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/billboardMetricSetting/put
          def edit_billboard_setting_at_property_level_for_customer(customer_id, property_id, billboard_metric_setting)
            request(Net::HTTP::Put, path_for("customer", customer_id, "property", property_id, "billboardMetricSetting"), {}, {}, billboard_metric_setting, "billboardMetricSetting", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Energy Performance Project
          #
          # This web service updates an energy performance project based on the
          # information provided in the XML request. The corresponding property
          # must already be shared with you. The service returns the unique
          # identifier to the updated energy performance project and a link to
          # the corresponding web service to retrieve it.
          #
          # @param energy_performance_project_id [Integer]
          # @param energy_performance_project [PortfolioManager::Xml::EnergyPerformanceProjectType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/energyprojects/put
          def edit_energy_performance_project(energy_performance_project_id, energy_performance_project)
            request(Net::HTTP::Put, path_for("energyPerformanceProject", energy_performance_project_id), {}, {}, energy_performance_project, "energyPerformanceProject", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Property Baseline and Target
          #
          # This web service updates the energy and water baseline dates and
          # performance target settings for a specific property based on the
          # information provided in the XML request. The corresponding property
          # must already be shared with you. The service returns a link to the
          # corresponding web service to retrieve the information.
          #
          # @param property_id [Integer]
          # @param baseline_and_target [PortfolioManager::Xml::BaselineAndTargetType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/baselineAndTarget/put
          def edit_property_baseline_and_target(property_id, baseline_and_target)
            request(Net::HTTP::Put, path_for("property", property_id, "baselineAndTarget"), {}, {}, baseline_and_target, "baselineAndTarget", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Billboard Metric List
          #
          # This web service returns a list of metrics that can be used for the
          # "billboard" display. For more information on how to set the
          # billboard display, see the "Account" and "Property" documentation
          # sections.
          #
          # @return [PortfolioManager::Xml::BillboardMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/billboardMetricList/get
          def get_billboard_metric_list
            request(Net::HTTP::Get, path_for("billboardMetric", "list"), {}, {}, nil, nil, PortfolioManager::Xml::BillboardMetricsType, basic_auth: true)
          end

          # Get Billboard Setting at Property Level for Account
          #
          # This web service returns a desired "billboard" metric for the
          # authenticated user's account and a specified property. After set,
          # the front-end application will display the chosen metric in the
          # billboard for the authenticated user. The billboard is shown in the
          # upper-right section of each property. You must have at least READ
          # access to the property to view the billboard setting.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::BillboardMetricSetting, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/accountBillboardMetricSetting/get
          def get_billboard_setting_at_property_level_for_account(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "billboardMetricSetting"), {}, {}, nil, nil, PortfolioManager::Xml::BillboardMetricSetting, basic_auth: true)
          end

          # Get Billboard Setting at Property Level for Customer
          #
          # This web service returns the set "billboard" metric for a specified
          # account and property combination. The billboard is displayed in the
          # upper-right section of each property. You must be connected with the
          # customer and must have at least READ permission on the property to
          # view the customer's billboard metric setting.
          #
          # @param customer_id [Integer]
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::BillboardMetricSetting, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/billboardMetricSetting/get
          def get_billboard_setting_at_property_level_for_customer(customer_id, property_id)
            request(Net::HTTP::Get, path_for("customer", customer_id, "property", property_id, "billboardMetricSetting"), {}, {}, nil, nil, PortfolioManager::Xml::BillboardMetricSetting, basic_auth: true)
          end

          # Get eGrid Subregion List
          #
          # This web service retrieves a list of all of the eGrid subregions
          # that a federal property can be associated to.
          #
          # @return [PortfolioManager::Xml::EGridSubregionList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/eGridSubregionList/get
          def get_egrid_subregion_list
            request(Net::HTTP::Get, path_for("property", "eGridSubregion", "list"), {}, {}, nil, nil, PortfolioManager::Xml::EGridSubregionList, basic_auth: true)
          end

          # Get Energy Performance Project
          #
          # This web service returns information for a specific energy
          # performance project. The corresponding property must already be
          # shared to you. The information returned to you does not include any
          # energy performance indicators. To retrieve energy performance
          # indicators, you can call the Get-Metrics web service for the
          # applicable metrics and evaluation periods.
          #
          # @param energy_performance_project_id [Integer]
          # @return [PortfolioManager::Xml::EnergyPerformanceProjectType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/energyprojects/get
          def get_energy_performance_project(energy_performance_project_id)
            request(Net::HTTP::Get, path_for("energyPerformanceProject", energy_performance_project_id), {}, {}, nil, nil, PortfolioManager::Xml::EnergyPerformanceProjectType, basic_auth: true)
          end

          # Get Energy Performance Project List
          #
          # This web service retrieves a list of all the energy performance
          # projects for a specific property. The property must already be
          # shared to you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/energyprojectsList/get
          def get_energy_performance_project_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "energyPerformanceProject", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Federal Agency List
          #
          # This web service retrieves a list of all of the federal agencies
          # that a federal property can be associated to.
          #
          # @return [PortfolioManager::Xml::FederalAgencies, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/federalAgencyList/get
          def get_federal_agency_list
            request(Net::HTTP::Get, path_for("property", "federalAgency", "list"), {}, {}, nil, nil, PortfolioManager::Xml::FederalAgencies, basic_auth: true)
          end

          # Get Property Baseline and Target
          #
          # This web service retrieves the energy and water baseline dates and
          # the performance target settings for a specific property.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::BaselineAndTargetType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/baselineAndTarget/get
          def get_property_baseline_and_target(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "baselineAndTarget"), {}, {}, nil, nil, PortfolioManager::Xml::BaselineAndTargetType, basic_auth: true)
          end

          # Get Property Custom Field Values
          #
          # This web service returns a list of custom fields and their values
          # for a specific property.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::CustomFieldList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/property/customFieldValues/get
          def get_property_custom_field_values(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "customFieldList"), {}, {}, nil, nil, PortfolioManager::Xml::CustomFieldList, basic_auth: true)
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
          include PortfolioManager::Services::Property::Property::Live
          include PortfolioManager::Services::Property::Design::Live
          include PortfolioManager::Services::Property::ElectricDistributionUtility::Live
          include PortfolioManager::Services::Property::PowerGenerationPlant::Live
          include PortfolioManager::Services::Property::InternationalWeatherStation::Live
          include PortfolioManager::Services::Property::UniqueIdentifiers::Live
          include PortfolioManager::Services::Property::VerificationInformation::Live
          include PortfolioManager::Services::Property::Miscellaneous::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Property::Property::Test
          include PortfolioManager::Services::Property::Design::Test
          include PortfolioManager::Services::Property::ElectricDistributionUtility::Test
          include PortfolioManager::Services::Property::PowerGenerationPlant::Test
          include PortfolioManager::Services::Property::InternationalWeatherStation::Test
          include PortfolioManager::Services::Property::UniqueIdentifiers::Test
          include PortfolioManager::Services::Property::VerificationInformation::Test
          include PortfolioManager::Services::Property::Miscellaneous::Test
        end
      end
    end
  end
end
