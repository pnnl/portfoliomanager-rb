require "net/http"

module PortfolioManager
  module Services
    # Basic Account Services
    #
    # Account Services allow you to manage Portfolio Manager accounts. These
    # services are divided into two sections. The first section includes
    # services that allow you to create and manage your own account as well as
    # accounts that belong to your customers. The second section includes
    # services that allow you to manage advanced settings that define your
    # service offerings, such as your terms and conditions, supported fuel
    # types, custom fields, etc.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/account
    module BasicAccount
      # Accounts
      module Accounts
        # Live Environment
        module Live
          # Create Customer
          #
          # This web service creates an account for a customer based on the
          # information provided in the XML request and establishes a connection
          # to your account. It returns the unique identifier to the newly
          # created account and a link to the corresponding web service to
          # retrieve it.
          #
          # After creating a new Portfolio Manager account for your customer,
          # you may want to provide them their user account information (i.e.,
          # username, password, security questions, etc.). If you decide to
          # provide them this information, you will have to securely communicate
          # this information to your customer on your own. None of the Portfolio
          # Manager web services will transmit this user information to your
          # customer for you.
          #
          # @param account [PortfolioManager::Xml::AccountType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customer/post
          def create_customer(account)
            request(Net::HTTP::Post, path_for("customer"), {}, {}, account, "account", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Account
          #
          # This web service updates your account based on the information
          # provided in the XML request. It returns the unique identifier to the
          # updated account and a link to the corresponding web service to
          # retrieve it. If the optional "billboardMetric" element is included,
          # this setting will clear any previously set property level billboard
          # metric settings for all properties within the authenticated user's
          # account.
          #
          # @param account [PortfolioManager::Xml::AccountType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/account/put
          def edit_account(account)
            request(Net::HTTP::Put, path_for("account"), {}, {}, account, "account", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Customer
          #
          # Updates an account for your customer that you are already connected
          # to. If the optional "billboardMetric" element is included, this
          # setting will clear any previously set property level billboard
          # metric settings for all properties within the specified customer's
          # account.
          #
          # @param customer_id [Integer]
          # @param customer [PortfolioManager::Xml::Customer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customer/put
          def edit_customer(customer_id, customer)
            request(Net::HTTP::Put, path_for("customer", customer_id), {}, {}, customer, "customer", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Account
          #
          # This web service retrieves your account information that includes
          # your username, password, and contact information.
          #
          # @return [PortfolioManager::Xml::AccountType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/account/get
          def get_account
            request(Net::HTTP::Get, path_for("account"), {}, {}, nil, nil, PortfolioManager::Xml::AccountType, basic_auth: true)
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
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/billboardMetricList/get
          def get_billboard_metric_list
            request(Net::HTTP::Get, path_for("billboardMetric", "list"), {}, {}, nil, nil, PortfolioManager::Xml::BillboardMetricsType, basic_auth: true)
          end

          # Get Customer
          #
          # This web service retrieves account information for a specific
          # customer that you are connected to.
          #
          # @param customer_id [Integer]
          # @return [PortfolioManager::Xml::Customer, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customer/get
          def get_customer(customer_id)
            request(Net::HTTP::Get, path_for("customer", customer_id), {}, {}, nil, nil, PortfolioManager::Xml::Customer, basic_auth: true)
          end

          # Get Customer Custom Field Values
          #
          # This web service returns a list of custom fields and their values
          # for a specific customer.
          #
          # @param account_id [Integer]
          # @return [PortfolioManager::Xml::CustomFieldList, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customFieldValues/get
          def get_customer_custom_field_values(account_id)
            request(Net::HTTP::Get, path_for("account", account_id, "customFieldList"), {}, {}, nil, nil, PortfolioManager::Xml::CustomFieldList, basic_auth: true)
          end

          # Get Customer List
          #
          # This web service returns a list of customers that you are connected
          # to.
          #
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customerList/get
          def get_customer_list
            request(Net::HTTP::Get, path_for("customer", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
          # Create Account
          #
          # This web service creates an account for the purposes of offering
          # data exchange web services. An account is created based on the
          # information provided in the XML request. It returns the unique
          # identifier to the newly created account and a link to the
          # corresponding web service to retrieve it.
          #
          # @param account [PortfolioManager::Xml::AccountType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/test/api/account/account/post
          def create_account(account)
            request(Net::HTTP::Post, path_for("account"), {}, {}, account, "account", PortfolioManager::Xml::ResponseType)
          end
        end
      end

      # Advanced Settings for Organizations Exchanging Data
      module AdvancedSettingsForOrganizationsExchangingData
        # Live Environment
        module Live
          # Create Custom Field
          #
          # This web service adds a custom field. This custom field is used by
          # the data exchange web services during the connection/share process.
          # Note that there is no validation performed on the specified display
          # order.
          #
          # @param custom_field [PortfolioManager::Xml::CustomField]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customField/post
          def create_custom_field(custom_field)
            request(Net::HTTP::Post, path_for("dataExchangeSettings", "customField"), {}, {}, custom_field, "customField", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Custom Field
          #
          # This web service deletes a custom field and all data stored
          # associated with it.
          #
          # @param custom_field_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customField/delete
          def delete_custom_field(custom_field_id)
            request(Net::HTTP::Delete, path_for("dataExchangeSettings", "customField", custom_field_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Custom Field
          #
          # This web service updates a specified custom field. This custom field
          # is used by the data exchange web services during the
          # connection/share process.
          #
          # @param custom_field_id [Integer]
          # @param custom_field [PortfolioManager::Xml::CustomField]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customField/put
          def edit_custom_field(custom_field_id, custom_field)
            request(Net::HTTP::Put, path_for("dataExchangeSettings", "customField", custom_field_id), {}, {}, custom_field, "customField", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Edit Data Exchange Settings
          #
          # This web service updates the various settings that describes your
          # data exchange service offerings such as terms and conditions,
          # supported fuel types, etc.
          #
          # @param data_exchange_settings [PortfolioManager::Xml::DataExchangeSettings]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/settings/put
          def edit_data_exchange_settings(data_exchange_settings)
            request(Net::HTTP::Put, path_for("dataExchangeSettings"), {}, {}, data_exchange_settings, "dataExchangeSettings", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Custom Field
          #
          # This web service returns information for a specific custom field.
          #
          # @param custom_field_id [Integer]
          # @return [PortfolioManager::Xml::CustomField, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customField/get
          def get_custom_field(custom_field_id)
            request(Net::HTTP::Get, path_for("dataExchangeSettings", "customField", custom_field_id), {}, {}, nil, nil, PortfolioManager::Xml::CustomField, basic_auth: true)
          end

          # Get Custom Field List
          #
          # This web service returns a list of custom fields that are used by
          # your account. These custom fields allow you to gather more data from
          # your customers as they send connection and share requests to you.
          #
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/customFieldList/get
          def get_custom_field_list
            request(Net::HTTP::Get, path_for("dataExchangeSettings", "customField", "list"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Exchange Settings
          #
          # This web service retrieves the various settings that describes your
          # data exchange service offerings such as terms and conditions,
          # supported fuel types, etc.
          #
          # @return [PortfolioManager::Xml::DataExchangeSettings, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/account/settings/get
          def get_data_exchange_settings
            request(Net::HTTP::Get, path_for("dataExchangeSettings"), {}, {}, nil, nil, PortfolioManager::Xml::DataExchangeSettings, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Basic Account Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::BasicAccount::Accounts::Live
          include PortfolioManager::Services::BasicAccount::AdvancedSettingsForOrganizationsExchangingData::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::BasicAccount::Accounts::Test
          include PortfolioManager::Services::BasicAccount::AdvancedSettingsForOrganizationsExchangingData::Test
        end
      end
    end
  end
end
