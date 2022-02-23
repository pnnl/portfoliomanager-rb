require "net/http"

module PortfolioManager
  module Services
    # Building Services
    #
    # The Building Services allow you to manage buildings and associate them to
    # properties. You must be already connected to your customers to be able to
    # manage their buildings.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/building
    module Building
      # Building
      module Building
        # Live Environment
        module Live
          # Add Building
          #
          # This web service creates a building under a specified property based
          # on the information provided in the XML request. It returns the
          # unique identifier to the newly created building and a link to the
          # corresponding web service to retrieve it.
          #
          # @param property_id [Integer]
          # @param building [PortfolioManager::Xml::PropertyType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/building/post
          def add_building(property_id, building)
            request(Net::HTTP::Post, path_for("property", property_id, "building"), {}, {}, building, "building", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Associate Building to a Property
          #
          # This web service associates a specific building to a specific
          # property.
          #
          # @param property_id [Integer]
          # @param building_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/association/post
          def associate_building_to_a_property(property_id, building_id)
            request(Net::HTTP::Post, path_for("association", "property", property_id, "building", building_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Building
          #
          # This web service deletes a specified property. The property must
          # already be shared with you. All associated meters and buildings are
          # also deleted.
          #
          # @param building_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/building/delete
          def delete_building(building_id)
            request(Net::HTTP::Delete, path_for("building", building_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Building
          #
          # This web service updates a building based on the information
          # provided in the XML request. It returns the unique identifier to the
          # updated building and a link to the corresponding web service to
          # retrieve it.
          #
          # @param building_id [Integer]
          # @param building [PortfolioManager::Xml::PropertyType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/building/put
          def edit_building(building_id, building)
            request(Net::HTTP::Put, path_for("building", building_id), {}, {}, building, "building", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Building
          #
          # This web service retrieves information for a specific building. The
          # building must already be shared with you.
          #
          # @param building_id [Integer]
          # @return [PortfolioManager::Xml::PropertyType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/building/get
          def get_building(building_id)
            request(Net::HTTP::Get, path_for("building", building_id), {}, {}, nil, nil, PortfolioManager::Xml::PropertyType, basic_auth: true)
          end

          # Get Building List
          #
          # This web service returns a list of buildings for a specific property
          # that is shared with you.
          #
          # @param property_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/buildingList/get
          def get_building_list(property_id)
            request(Net::HTTP::Get, path_for("property", property_id, "building", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Parent Property List
          #
          # This web service returns a list of parent properties for a specific
          # building that is shared to you.
          #
          # @param building_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/propertyList/get
          def get_parent_property_list(building_id)
            request(Net::HTTP::Get, path_for("building", building_id, "property", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Remove Building Association
          #
          # This web service removes the association between a specific building
          # and property.
          #
          # @param property_id [Integer]
          # @param building_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/building/association/delete
          def remove_building_association(property_id, building_id)
            request(Net::HTTP::Delete, path_for("association", "property", property_id, "building", building_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Building Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::Building::Building::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Building::Building::Test
        end
      end
    end
  end
end
