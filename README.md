# ENERGY STAR Portfolio Manager - Web Services Clients in Ruby

`portfoliomanager-rb` provides clients for [ENERGY STAR Portfolio Manager Web Services](https://portfoliomanager.energystar.gov/webservices/home) for the Ruby programming language.

A short rundown of some of the major features:
* 100% API coverage (version 22.0).
  ```ruby
  test_client = PortfolioManager::Client::Test.new("SampleJohnDoeAccount", "Sample123")

  test_client.methods
  #  => [:create_sample_properties, :submit_meter_level_custom_field_values, :submit_property_level_custom_field_values, :send_connection_request_from_test_environment, :send_meter_share_request_from_test_environment, :submit_customer_level_custom_field_values, :create_account, :target_finder, :get_reasons_for_no_energy_score, :get_design_metrics, :get_reasons_for_no_water_score, :get_property_metrics, :get_property_monthly_metrics, :get_property_use_metrics, :get_data_requests, :add_data_response, :get_data_response, :edit_data_response, :delete_data_response, :get_data_response_errors, :generate_response_data_preview, :get_data_response_receipt, :submit_data_response, :get_data_response_status, :delete_data_request_access, :get_all_data_responses_results, :get_preview_data_response_results, :get_data_request, :generate_report, :get_report_status, :get_report, :get_report_list, :edit_report, :get_report_results, :edit_report_template, :delete_report_template, :add_report_template, :get_report_template_list, :get_report_template, :get_available_metrics_list, :get_custom_use_detail, :get_custom_property_use, :edit_custom_use_details_correction, :get_custom_use_details_revision_history, :edit_custom_use_detail_revision, :delete_custom_use_detail, :edit_use_details, :get_what_changed_property_use_list_from_use_detail_changes_only, :edit_use_details_correction, :get_id_hierarchy_for_use_detail, :get_use_details, :get_use_details_revision_history, :add_property_use, :delete_property_use, :edit_property_use, :get_id_hierarchy_for_property_use, :get_property_use, :get_property_use_list, :get_what_changed_property_use_list, :get_energy_performance_project_list, :get_federal_agency_list, :get_property_baseline_and_target, :get_billboard_metric_list, :get_property_custom_field_values, :add_energy_performance_project, :delete_energy_performance_project, :edit_billboard_setting_at_property_level_for_account, :edit_billboard_setting_at_property_level_for_customer, :edit_energy_performance_project, :edit_property_baseline_and_target, :get_billboard_setting_at_property_level_for_account, :get_billboard_setting_at_property_level_for_customer, :get_egrid_subregion_list, :get_energy_performance_project, :add_property_verification_professional_designation_information, :delete_property_verification_information, :delete_property_verification_professional_designation_information, :delete_specific_professional_designation_license_from_property_verification_information, :delete_specific_professional_designation_type_from_property_verification_information, :get_professional_designation_types_list, :get_property_verification_information, :get_property_verification_professional_designation_information, :update_property_verification_information, :update_property_verification_professional_designation_information, :update_specific_professional_designation_license_of_property_verification_information, :add_property_verification_information, :add_property_identifier_value, :delete_property_identifier_value, :edit_property_identifier_value, :get_property_identifier_list, :get_property_identifier_value, :get_property_identifier_value_list, :get_international_weather_station_list, :edit_property_international_weather_station, :get_property_pgp_list, :delete_property_pgp, :edit_property_pgp, :edit_property_edu, :get_property_edu_list, :get_design, :edit_design, :add_property, :delete_property, :edit_property, :get_id_hierarchy_for_property, :get_property, :get_property_list, :get_what_changed_property_list, :get_meter_custom_field_values, :get_individual_meter_of_an_aggregated_meter, :get_meter_aggregation_indicator, :get_meter_aggregation_list, :update_individual_meter_of_aggregated_meter, :add_individual_meter_to_aggregated_meter, :delete_all_individual_meters_of_an_aggregate_meter, :delete_individual_meter_of_an_aggregated_meter, :delete_meter_identifier_value, :edit_meter_identifier_value, :get_all_meter_identifier_list, :get_meter_identifier_list, :get_meter_identifier_value, :get_meter_identifier_value_list, :add_meter_identifier_value, :add_meter_waste_data, :delete_waste_data, :delete_meter_waste_data, :edit_waste_data, :get_id_hierarchy_for_waste_data, :get_meter_waste_data, :get_what_changed_waste_data_meter_list, :get_what_changed_consumption_data_meter_list, :add_meter_consumption_data, :delete_consumption_data, :delete_meter_consumption_data, :edit_consumption_data, :get_id_hierarchy_for_consumption_data, :get_meter_consumption_data, :associate_meters_to_a_property_use, :disassociate_meter_from_a_property_use, :get_associated_property_use_meters, :associate_meter_to_a_property_use, :associate_meters_to_a_property, :disassociate_meter_from_a_property, :get_associated_property_meters, :associate_meter_to_a_property, :get_what_changed_meter_list, :get_what_changed_meter_list_for_a_specific_property, :add_meter, :delete_meter, :edit_meter, :get_id_hierarchy_for_meter, :get_meter, :get_meter_list, :home_energy_yardstick, :get_notifications, :get_pending_connection_requests, :get_pending_meter_share_requests, :get_pending_property_share_requests, :unshare_meter, :accept_reject_pending_connection_requests, :unshare_property, :accept_reject_pending_meter_share_requests, :accept_reject_pending_property_share_requests, :disconnect_from_customer, :delete_building, :edit_building, :get_building, :get_building_list, :get_parent_property_list, :remove_building_association, :add_building, :associate_building_to_a_property, :create_custom_field, :delete_custom_field, :edit_custom_field, :edit_data_exchange_settings, :get_custom_field, :get_custom_field_list, :get_data_exchange_settings, :edit_account, :edit_customer, :get_account, :get_customer, :get_customer_custom_field_values, :get_customer_list, :create_customer, ...]
  ```
* Automated mapping between XML schemas and Ruby objects.
  ```ruby
  property = PortfolioManager::Xml::PropertyType.new
  property.name = "My Property"

  xml = PortfolioManager::Mapper.instance.obj2xml(property)
  #  => "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><property><name>My Property</name></property>"

  obj = PortfolioManager::Mapper.instance.xml2obj(xml)
  obj.name
  #  => "My Property"
  ```
* Clients for [Live](https://portfoliomanager.energystar.gov/webservices/home/api) and [Test](https://portfoliomanager.energystar.gov/webservices/home/test/api) environments.
  ```ruby
  # Live Environment
  live_client = PortfolioManager::Client::Live.new("SampleJohnDoeAccount", "Sample123")

  # Test Environment
  test_client = PortfolioManager::Client::Test.new("SampleJohnDoeAccount", "Sample123")
  ```
* Debug mode with HTTP request/response logging.
  ```ruby
  # Test Environment with Debugging
  test_client = PortfolioManager::Client::Test.new("SampleJohnDoeAccount", "Sample123", true)

  account = test_client.get_account
  # I, [2022-02-18T11:48:19.422074 #91494]  INFO -- PortfolioManager: Request:
  # 	Protocol: HTTP/1.2
  # 	Method: GET
  # 	Scheme: https
  # 	Host: portfoliomanager.energystar.gov
  # 	Path: /wstest/account
  # 	QueryString:
  # 	Body:
  # 	Accept: application/xml, text/xml
  # 	Authorization: Basic U2FtcGxlSm9obkRvZUFjY291bnQxMjM0NTY3OTAzOlNhbXBsZTEyMw==
  #
  # I, [2022-02-18T11:48:19.581841 #91494]  INFO -- PortfolioManager: Response:
  # 	Protocol: HTTP/1.1
  # 	URI: https://portfoliomanager.energystar.gov/wstest/account
  # 	Code: 200
  # 	Message:
  # 	Body: <?xml version="1.0" encoding="UTF-8" standalone="yes"?><account><id>379547</id><username>SampleJohnDoeAccount1234567903</username><password>********</password><webserviceUser>true</webserviceUser><searchable>false</searchable><includeTestPropertiesInGraphics>true</includeTestPropertiesInGraphics><emailPreferenceCanadianAccount>true</emailPreferenceCanadianAccount><contact><address address1="123 South St" city="Edmonton" state="AB" postalCode="T5G 2S7" country="CA"/><email>jack_brown@acme.com</email><firstName>Jack</firstName><phone>703-555-2121</phone><lastName>Brown</lastName><jobTitle>Building Administrator Data Exchange User</jobTitle></contact><organization name="ACME Corporation"><primaryBusiness>Other</primaryBusiness><otherBusinessDescription>other</otherBusinessDescription><energyStarPartner>true</energyStarPartner><energyStarPartnerType>Service and Product Providers</energyStarPartnerType></organization><billboardMetric>No Selection Made</billboardMetric><languagePreference>en_US</languagePreference></account>
  #
  #  => #<PortfolioManager::Xml::AccountType:0x00007fdaedbfbfb0 @id=379547, @username="SampleJohnDoeAccount1234567903", @password="********", @webserviceUser=true, @searchable=false, @includeTestPropertiesInGraphics=true, @emailPreferenceCanadianAccount=true, @contact=#<PortfolioManager::Xml::ContactType:0x00007fdaedbfa868 @address=#<PortfolioManager::Xml::AddressType:0x00007fdaedbfa7f0 @__xmlattr={#<XSD::QName:0x1d74 {}address1>=>"123 South St", #<XSD::QName:0x1d88 {}city>=>"Edmonton", #<XSD::QName:0x1d9c {}postalCode>=>"T5G 2S7", #<XSD::QName:0x1db0 {}state>=>"AB", #<XSD::QName:0x1dc4 {}country>=>"CA"}>, @email="jack_brown@acme.com", @firstName="Jack", @phone="703-555-2121", @lastName="Brown", @jobTitle="Building Administrator Data Exchange User">, @organization=#<PortfolioManager::Xml::OrganizationType:0x00007fdaedbebdb8 @primaryBusiness="Other", @otherBusinessDescription="other", @energyStarPartner=true, @energyStarPartnerType="Service and Product Providers", @__xmlattr={#<XSD::QName:0x1dd8 {}name>=>"ACME Corporation"}>, @billboardMetric="No Selection Made", @languagePreference="en_US">
  ```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'portfoliomanager-rb'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install portfoliomanager-rb

## Usage

See YARD documentation for source code for usage instructions.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pnnl/portfoliomanager-rb.

## License

The gem is available as open source under the terms of [The 2-Clause BSD License](https://opensource.org/licenses/BSD-2-Clause).
