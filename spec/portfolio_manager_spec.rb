RSpec.describe PortfolioManager do
  it "has a version number" do
    expect(PortfolioManager::VERSION).not_to be nil
  end

  context "without HTTP Basic authentication" do
    it "can create an account" do
      account = PortfolioManager::Xml::AccountType.new
      account.id = nil
      account.username = "SampleJohnDoeAccount"
      account.password = "Sample123"
      account.contact = PortfolioManager::Xml::ContactType.new
      account.contact.firstName = "John"
      account.contact.lastName = "Doe"
      account.contact.email = "john_doe@acme.com"
      account.contact.address = PortfolioManager::Xml::AddressType.new
      account.contact.address.xmlattr_address1 = "123 Main St"
      account.contact.address.xmlattr_address2 = nil
      account.contact.address.xmlattr_city = "Edmonton"
      account.contact.address.xmlattr_county = nil
      account.contact.address.xmlattr_postalCode = "T5G 2S7"
      account.contact.address.xmlattr_state = "AB"
      account.contact.address.xmlattr_otherState = nil
      account.contact.address.xmlattr_country = "CA"
      account.contact.jobTitle = "Building Administrator Data Exchange User"
      account.contact.phone = "703-555-2121"
      account.organization = PortfolioManager::Xml::OrganizationType.new
      account.organization.primaryBusiness = PortfolioManager::Xml::PrimaryBusinessType::Other
      account.organization.otherBusinessDescription = "other"
      account.organization.energyStarPartner = true
      account.organization.energyStarPartnerType = PortfolioManager::Xml::TypeOfEnergyStarPartner::ServiceAndProductProviders
      account.organization.otherPartnerDescription = nil
      account.organization.xmlattr_name = "ACME Corporation"
      account.webserviceUser = true
      account.searchable = true
      account.includeTestPropertiesInGraphics = nil
      account.emailPreferenceCanadianAccount = true
      account.billboardMetric = nil
      account.languagePreference = nil

      client_without_basic_auth = PortfolioManager::Client::Test.new(nil, nil, true)

      response_for_create_account = client_without_basic_auth.create_account(account)
      expect(response_for_create_account.xmlattr_status).to eq("Ok")

      client_with_basic_auth = PortfolioManager::Client::Test.new(account.username, account.password, true)

      new_account = client_with_basic_auth.get_account
      expect(new_account).to be_an_instance_of(PortfolioManager::Xml::AccountType)
      expect(new_account.id).to eq(response_for_create_account.id)
    end
  end

  context "with HTTP Basic authentication" do
    before(:all) do
      @client_for_account          = PortfolioManager::Client::Test.new("SampleJohnDoeAccount", "Sample123", true)
      @client_for_customer_account = PortfolioManager::Client::Test.new("SampleJohnDoeAccount", "Sample123", true)
    end

    it "can update the data exchange settings for an account" do
      data_exchange_settings = PortfolioManager::Xml::DataExchangeSettings.new
      data_exchange_settings.supportedMeterTypes = PortfolioManager::Xml::DataExchangeSettings::SupportedMeterTypes.new
      data_exchange_settings.supportedMeterTypes << PortfolioManager::Xml::TypeOfMeter::Electric
      data_exchange_settings.supportedMeterTypes << PortfolioManager::Xml::TypeOfMeter::MunicipallySuppliedPotableWaterIndoor
      data_exchange_settings.supportedMeterTypes << PortfolioManager::Xml::WasteMeterType::DisposedTrash
      data_exchange_settings.termsOfUse = PortfolioManager::Xml::DataExchangeSettings::TermsOfUse.new
      data_exchange_settings.termsOfUse.none = nil
      data_exchange_settings.termsOfUse.text = "Terms and Conditions: You may use the ACME's services to interface with\nEPA's Data Exchange Platform only if you are a customer of ACME and\nagree to the detailed Terms and Conditions set forth on our company's website."
      data_exchange_settings.termsOfUse.url = nil

      response_for_edit_data_exchange_settings = @client_for_account.edit_data_exchange_settings(data_exchange_settings)
      expect(response_for_edit_data_exchange_settings.xmlattr_status).to eq("Ok")

      new_data_exchange_settings = @client_for_account.get_data_exchange_settings
      expect(new_data_exchange_settings.supportedMeterTypes.collect(&:to_s).sort).to eq(data_exchange_settings.supportedMeterTypes.collect(&:to_s).sort)
      expect(new_data_exchange_settings.termsOfUse.none).to be nil
      expect(new_data_exchange_settings.termsOfUse.text).to eq(data_exchange_settings.termsOfUse.text)
      expect(new_data_exchange_settings.termsOfUse.url).to be nil
    end

    it "can create a customer account" do
      customer_account = PortfolioManager::Xml::AccountType.new
      customer_account.id = nil
      customer_account.username = "ENTER_CUSTOMER_USERNAME"
      customer_account.password = "ENTER_CUSTOMER_PASSWORD"
      customer_account.contact = PortfolioManager::Xml::ContactType.new
      customer_account.contact.firstName = "Jack"
      customer_account.contact.lastName = "Brown"
      customer_account.contact.email = "jack_brown@acme.com"
      customer_account.contact.address = PortfolioManager::Xml::AddressType.new
      customer_account.contact.address.xmlattr_address1 = "123 South St"
      customer_account.contact.address.xmlattr_address2 = nil
      customer_account.contact.address.xmlattr_city = "Edmonton"
      customer_account.contact.address.xmlattr_county = nil
      customer_account.contact.address.xmlattr_postalCode = "T5G 2S7"
      customer_account.contact.address.xmlattr_state = "AB"
      customer_account.contact.address.xmlattr_otherState = nil
      customer_account.contact.address.xmlattr_country = "CA"
      customer_account.contact.jobTitle = "Building Administrator Data Exchange User"
      customer_account.contact.phone = "703-555-2121"
      customer_account.organization = PortfolioManager::Xml::OrganizationType.new
      customer_account.organization.primaryBusiness = PortfolioManager::Xml::PrimaryBusinessType::Other
      customer_account.organization.otherBusinessDescription = "other"
      customer_account.organization.energyStarPartner = true
      customer_account.organization.energyStarPartnerType = PortfolioManager::Xml::TypeOfEnergyStarPartner::ServiceAndProductProviders
      customer_account.organization.otherPartnerDescription = nil
      customer_account.organization.xmlattr_name = "ACME Corporation"
      customer_account.webserviceUser = true
      customer_account.searchable = false
      customer_account.includeTestPropertiesInGraphics = nil
      customer_account.emailPreferenceCanadianAccount = true
      customer_account.billboardMetric = nil
      customer_account.languagePreference = nil

      response_for_create_customer = @client_for_account.create_customer(customer_account)
      expect(response_for_create_customer.xmlattr_status).to eq("Ok")

      customer_id = response_for_create_customer.id

      new_customer = @client_for_account.get_customer(customer_id)
      expect(new_customer).to be_an_instance_of(PortfolioManager::Xml::Customer)
    end

    it "can create properties, property uses, meters, water meters, and waste meters within a customer account" do
      property = PortfolioManager::Xml::PropertyType.new
      property.name = "Broadway School"
      property.constructionStatus = PortfolioManager::Xml::ConstructionStatusType::Existing
      property.primaryFunction = PortfolioManager::Xml::PrimaryFunctionType::K12School
      property.grossFloorArea = PortfolioManager::Xml::GrossFloorAreaType.new
      property.grossFloorArea.audit = nil
      property.grossFloorArea.value = 10000
      property.grossFloorArea.xmlattr_id = nil
      property.grossFloorArea.xmlattr_currentAsOf = nil
      property.grossFloorArea.xmlattr_temporary = false
      property.grossFloorArea.xmlattr_default = nil
      property.grossFloorArea.xmlattr_units = "Square Feet"
      property.irrigatedArea = nil
      property.yearBuilt = 2000
      property.address = PortfolioManager::Xml::AddressType.new
      property.address.xmlattr_address1 = "123 South St"
      property.address.xmlattr_address2 = nil
      property.address.xmlattr_city = "Edmonton"
      property.address.xmlattr_county = nil
      property.address.xmlattr_postalCode = "T5G 2S7"
      property.address.xmlattr_state = "AB"
      property.address.xmlattr_otherState = nil
      property.address.xmlattr_country = "CA"
      property.numberOfBuildings = nil
      property.isFederalProperty = false
      property.federalOwner = nil
      property.agency = nil
      property.agencyDepartmentRegion = nil
      property.federalCampus = nil
      property.occupancyPercentage = PortfolioManager::Xml::OccupancyType::C_80
      property.notes = nil
      property.isInstitutionalProperty = nil
      property.accessLevel = nil
      property.audit = nil

      customer_account = @client_for_customer_account.get_account

      response_for_add_property = @client_for_customer_account.add_property(customer_account.id, property)
      expect(response_for_add_property.xmlattr_status).to eq("Ok")

      property_id = response_for_add_property.id

      begin
        property_use = PortfolioManager::Xml::K12SchoolType.new
        property_use.name = "Broadway K-12 School"
        property_use.useDetails = PortfolioManager::Xml::K12SchoolType::UseDetails.new
        property_use.useDetails.totalGrossFloorArea = PortfolioManager::Xml::GrossFloorAreaType.new
        property_use.useDetails.totalGrossFloorArea.audit = nil
        property_use.useDetails.totalGrossFloorArea.value = 333
        property_use.useDetails.totalGrossFloorArea.xmlattr_id = nil
        property_use.useDetails.totalGrossFloorArea.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.totalGrossFloorArea.xmlattr_temporary = false
        property_use.useDetails.totalGrossFloorArea.xmlattr_default = nil
        property_use.useDetails.totalGrossFloorArea.xmlattr_units = "Square Feet"
        property_use.useDetails.openOnWeekends = PortfolioManager::Xml::UseYesNoType.new
        property_use.useDetails.openOnWeekends.audit = nil
        property_use.useDetails.openOnWeekends.value = PortfolioManager::Xml::YesNo::Yes
        property_use.useDetails.openOnWeekends.xmlattr_id = nil
        property_use.useDetails.openOnWeekends.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.openOnWeekends.xmlattr_temporary = false
        property_use.useDetails.openOnWeekends.xmlattr_default = nil
        property_use.useDetails.numberOfWalkInRefrigerationUnits = nil
        property_use.useDetails.percentCooled = PortfolioManager::Xml::PercentCooledType.new
        property_use.useDetails.percentCooled.audit = nil
        property_use.useDetails.percentCooled.value = 0
        property_use.useDetails.percentCooled.xmlattr_id = nil
        property_use.useDetails.percentCooled.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.percentCooled.xmlattr_temporary = false
        property_use.useDetails.percentCooled.xmlattr_default = nil
        property_use.useDetails.percentHeated = PortfolioManager::Xml::PercentHeatedType.new
        property_use.useDetails.percentHeated.audit = nil
        property_use.useDetails.percentHeated.value = 0
        property_use.useDetails.percentHeated.xmlattr_id = nil
        property_use.useDetails.percentHeated.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.percentHeated.xmlattr_temporary = false
        property_use.useDetails.percentHeated.xmlattr_default = nil
        property_use.useDetails.numberOfComputers = PortfolioManager::Xml::UseDecimalType.new
        property_use.useDetails.numberOfComputers.audit = nil
        property_use.useDetails.numberOfComputers.value = 3
        property_use.useDetails.numberOfComputers.xmlattr_id = nil
        property_use.useDetails.numberOfComputers.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.numberOfComputers.xmlattr_temporary = false
        property_use.useDetails.numberOfComputers.xmlattr_default = nil
        property_use.useDetails.cookingFacilities = PortfolioManager::Xml::UseYesNoType.new
        property_use.useDetails.cookingFacilities.audit = nil
        property_use.useDetails.cookingFacilities.value = PortfolioManager::Xml::YesNo::Yes
        property_use.useDetails.cookingFacilities.xmlattr_id = nil
        property_use.useDetails.cookingFacilities.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.cookingFacilities.xmlattr_temporary = false
        property_use.useDetails.cookingFacilities.xmlattr_default = nil
        property_use.useDetails.isHighSchool = PortfolioManager::Xml::UseYesNoType.new
        property_use.useDetails.isHighSchool.audit = nil
        property_use.useDetails.isHighSchool.value = PortfolioManager::Xml::YesNo::Yes
        property_use.useDetails.isHighSchool.xmlattr_id = nil
        property_use.useDetails.isHighSchool.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.isHighSchool.xmlattr_temporary = false
        property_use.useDetails.isHighSchool.xmlattr_default = nil
        property_use.useDetails.monthsInUse = PortfolioManager::Xml::MonthsInUseType.new
        property_use.useDetails.monthsInUse.audit = nil
        property_use.useDetails.monthsInUse.value = 8
        property_use.useDetails.monthsInUse.xmlattr_id = nil
        property_use.useDetails.monthsInUse.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.monthsInUse.xmlattr_temporary = false
        property_use.useDetails.monthsInUse.xmlattr_default = nil
        property_use.useDetails.schoolDistrict = PortfolioManager::Xml::UseStringType.new
        property_use.useDetails.schoolDistrict.audit = nil
        property_use.useDetails.schoolDistrict.value = "String"
        property_use.useDetails.schoolDistrict.xmlattr_id = nil
        property_use.useDetails.schoolDistrict.xmlattr_currentAsOf = Date.new(2010, 8, 13)
        property_use.useDetails.schoolDistrict.xmlattr_temporary = false
        property_use.useDetails.schoolDistrict.xmlattr_default = nil
        property_use.useDetails.studentSeatingCapacity = nil
        property_use.useDetails.numberOfWorkers = nil
        property_use.useDetails.gymnasiumFloorArea = nil
        property_use.useDetails.grossFloorAreaUsedForFoodPreparation = nil
        property_use.audit = nil

        response_for_add_property_use = @client_for_customer_account.add_property_use(property_id, property_use, "k12School")
        expect(response_for_add_property_use.xmlattr_status).to eq("Ok")

        property_use_id = response_for_add_property_use.id

        meter = PortfolioManager::Xml::MeterType.new
        meter.id = nil
        meter.type = PortfolioManager::Xml::TypeOfMeter::Electric
        meter.name = "Electric Main Meter"
        meter.metered = true
        meter.unitOfMeasure = "kBtu (thousand Btu)"
        meter.firstBillDate = Date.new(2010, 1, 1)
        meter.inUse = true
        meter.inactiveDate = nil
        meter.otherDescription = nil
        meter.accessLevel = nil
        meter.aggregateMeter = nil
        meter.audit = nil

        response_for_add_meter = @client_for_customer_account.add_meter(property_id, meter, "meter")
        expect(response_for_add_meter.xmlattr_status).to eq("Ok")

        meter_id = response_for_add_meter.id

        water_meter = PortfolioManager::Xml::MeterType.new
        water_meter.id = nil
        water_meter.type = PortfolioManager::Xml::TypeOfMeter::MunicipallySuppliedPotableWaterIndoor
        water_meter.name = "Potable Indoor Meter"
        water_meter.metered = true
        water_meter.unitOfMeasure = "Gallons (US)"
        water_meter.firstBillDate = Date.new(2014, 1, 1)
        water_meter.inUse = true
        water_meter.inactiveDate = nil
        water_meter.otherDescription = nil
        water_meter.accessLevel = nil
        water_meter.aggregateMeter = nil
        water_meter.audit = nil

        response_for_add_water_meter = @client_for_customer_account.add_meter(property_id, water_meter, "meter")
        expect(response_for_add_water_meter.xmlattr_status).to eq("Ok")

        water_meter_id = response_for_add_water_meter.id

        waste_meter = PortfolioManager::Xml::TypeOfWasteMeter.new
        waste_meter.id = nil
        waste_meter.name = "regularDisposedWasteEstimation"
        waste_meter.type = PortfolioManager::Xml::WasteMeterType::DisposedTrash
        waste_meter.unitOfMeasure = "Cubic yards"
        waste_meter.dataEntryMethod = "regular container"
        waste_meter.containerSize = 2
        waste_meter.firstBillDate = Date.new(2000, 1, 1)
        waste_meter.inUse = true
        waste_meter.inactiveDate = nil
        waste_meter.accessLevel = nil
        waste_meter.audit = nil

        response_for_add_waste_meter = @client_for_customer_account.add_meter(property_id, waste_meter, "wasteMeter")
        expect(response_for_add_waste_meter.xmlattr_status).to eq("Ok")

        waste_meter_id = response_for_add_waste_meter.id

        meter_property_association_list = PortfolioManager::Xml::MeterPropertyAssociationListType.new
        meter_property_association_list.energyMeterAssociation = PortfolioManager::Xml::EnergyMeterAssocAndConfigType.new
        meter_property_association_list.energyMeterAssociation.meters = PortfolioManager::Xml::MeterListType.new
        meter_property_association_list.energyMeterAssociation.meters << meter_id
        meter_property_association_list.energyMeterAssociation.propertyRepresentation = PortfolioManager::Xml::PropertyRepresentation.new
        meter_property_association_list.energyMeterAssociation.propertyRepresentation.propertyRepresentationType = "Whole Property"
        meter_property_association_list.energyMeterAssociation.propertyRepresentation.tenantCommonAreaEnergyUseList = nil
        meter_property_association_list.energyMeterAssociation.propertyRepresentation.propertyRepresentationTypeOtherDesc = nil
        meter_property_association_list.waterMeterAssociation = PortfolioManager::Xml::WaterMeterAssocAndConfigType.new
        meter_property_association_list.waterMeterAssociation.meters = PortfolioManager::Xml::MeterListType.new
        meter_property_association_list.waterMeterAssociation.meters << water_meter_id
        meter_property_association_list.waterMeterAssociation.propertyRepresentation = PortfolioManager::Xml::PropertyRepresentation.new
        meter_property_association_list.waterMeterAssociation.propertyRepresentation.propertyRepresentationType = "Whole Property"
        meter_property_association_list.waterMeterAssociation.propertyRepresentation.tenantCommonAreaEnergyUseList = nil
        meter_property_association_list.waterMeterAssociation.propertyRepresentation.propertyRepresentationTypeOtherDesc = nil
        meter_property_association_list.wasteMeterAssociation = PortfolioManager::Xml::WasteMeterAssocAndConfigType.new
        meter_property_association_list.wasteMeterAssociation.meters = PortfolioManager::Xml::MeterListType.new
        meter_property_association_list.wasteMeterAssociation.meters << waste_meter_id

        response_for_associate_meters_to_a_property = @client_for_customer_account.associate_meters_to_a_property(property_id, meter_property_association_list)
        expect(response_for_associate_meters_to_a_property.xmlattr_status).to eq("Ok")

        meter_data = PortfolioManager::Xml::MeterDataType.new
        meter_data.meterConsumption << begin
          meter_consumption = PortfolioManager::Xml::MeterConsumptionType.new
          meter_consumption.id = nil
          meter_consumption.startDate = Date.new(2018, 12, 1)
          meter_consumption.endDate = Date.new(2018, 12, 31)
          meter_consumption.usage = 130
          meter_consumption.cost = 21
          meter_consumption.energyExportedOffSite = nil
          meter_consumption.greenPower = nil
          meter_consumption.rECOwnership = nil
          meter_consumption.demandTracking = nil
          meter_consumption.audit = nil
          meter_consumption.xmlattr_estimatedValue = true
          meter_consumption.xmlattr_isGreenPower = nil
          meter_consumption
        end
        meter_data.meterConsumption << begin
          meter_consumption = PortfolioManager::Xml::MeterConsumptionType.new
          meter_consumption.id = nil
          meter_consumption.startDate = Date.new(2018, 11, 1)
          meter_consumption.endDate = Date.new(2018, 11, 30)
          meter_consumption.usage = 120
          meter_consumption.cost = 20
          meter_consumption.energyExportedOffSite = nil
          meter_consumption.greenPower = nil
          meter_consumption.rECOwnership = nil
          meter_consumption.demandTracking = nil
          meter_consumption.audit = nil
          meter_consumption.xmlattr_estimatedValue = false
          meter_consumption.xmlattr_isGreenPower = nil
          meter_consumption
        end
        meter_data.meterDelivery = nil
        meter_data.links = nil

        response_for_add_meter_consumption_data = @client_for_customer_account.add_meter_consumption_data(meter_id, meter_data)
        expect(response_for_add_meter_consumption_data).to be_an_instance_of(PortfolioManager::Xml::MeterDataType)

        water_meter_data = PortfolioManager::Xml::MeterDataType.new
        water_meter_data.meterConsumption << begin
          meter_consumption = PortfolioManager::Xml::MeterConsumptionType.new
          meter_consumption.id = nil
          meter_consumption.startDate = Date.new(2018, 12, 1)
          meter_consumption.endDate = Date.new(2018, 12, 31)
          meter_consumption.usage = 130
          meter_consumption.cost = 21
          meter_consumption.energyExportedOffSite = nil
          meter_consumption.greenPower = nil
          meter_consumption.rECOwnership = nil
          meter_consumption.demandTracking = nil
          meter_consumption.audit = nil
          meter_consumption.xmlattr_estimatedValue = true
          meter_consumption.xmlattr_isGreenPower = nil
          meter_consumption
        end
        water_meter_data.meterConsumption << begin
          meter_consumption = PortfolioManager::Xml::MeterConsumptionType.new
          meter_consumption.id = nil
          meter_consumption.startDate = Date.new(2018, 11, 1)
          meter_consumption.endDate = Date.new(2018, 11, 30)
          meter_consumption.usage = 120
          meter_consumption.cost = 20
          meter_consumption.energyExportedOffSite = nil
          meter_consumption.greenPower = nil
          meter_consumption.rECOwnership = nil
          meter_consumption.demandTracking = nil
          meter_consumption.audit = nil
          meter_consumption.xmlattr_estimatedValue = false
          meter_consumption.xmlattr_isGreenPower = nil
          meter_consumption
        end
        water_meter_data.meterDelivery = nil
        water_meter_data.links = nil

        response_for_add_water_meter_consumption_data = @client_for_customer_account.add_meter_consumption_data(water_meter_id, water_meter_data)
        expect(response_for_add_water_meter_consumption_data).to be_an_instance_of(PortfolioManager::Xml::MeterDataType)

        waste_meter_data = PortfolioManager::Xml::WasteMeterDataType.new
        waste_meter_data.wasteData << begin
          waste_meter_entry = PortfolioManager::Xml::WasteMeterEntryType.new
          waste_meter_entry.id = nil
          waste_meter_entry.startDate = Date.new(2018, 1, 1)
          waste_meter_entry.endDate = Date.new(2018, 1, 31)
          waste_meter_entry.quantity = nil
          waste_meter_entry.timesEmptied = 4
          waste_meter_entry.averagePercentFull = 75
          waste_meter_entry.cost = 50
          waste_meter_entry.disposalDestination = PortfolioManager::Xml::DisposalDestinationType.new
          waste_meter_entry.disposalDestination.landfillPercentage = 25
          waste_meter_entry.disposalDestination.incinerationPercentage = 25
          waste_meter_entry.disposalDestination.wasteToEnergyPercentage = 45
          waste_meter_entry.disposalDestination.unknownDestPercentage = 5
          waste_meter_entry.audit = nil
          waste_meter_entry.xmlattr_estimatedValue = nil
          waste_meter_entry
        end
        waste_meter_data.wasteData << begin
          waste_meter_entry = PortfolioManager::Xml::WasteMeterEntryType.new
          waste_meter_entry.id = nil
          waste_meter_entry.startDate = Date.new(2018, 2, 1)
          waste_meter_entry.endDate = Date.new(2018, 2, 28)
          waste_meter_entry.quantity = nil
          waste_meter_entry.timesEmptied = 4
          waste_meter_entry.averagePercentFull = 100
          waste_meter_entry.cost = 50
          waste_meter_entry.disposalDestination = PortfolioManager::Xml::DisposalDestinationType.new
          waste_meter_entry.disposalDestination.landfillPercentage = 25
          waste_meter_entry.disposalDestination.incinerationPercentage = 25
          waste_meter_entry.disposalDestination.wasteToEnergyPercentage = 45
          waste_meter_entry.disposalDestination.unknownDestPercentage = 5
          waste_meter_entry.audit = nil
          waste_meter_entry.xmlattr_estimatedValue = nil
          waste_meter_entry
        end
        waste_meter_data.links = nil

        response_for_add_waste_meter_consumption_data = @client_for_customer_account.add_meter_waste_data(waste_meter_id, waste_meter_data)
        expect(response_for_add_waste_meter_consumption_data).to be_an_instance_of(PortfolioManager::Xml::WasteMeterDataType)

        property_metrics_list = @client_for_customer_account.get_property_metrics(property_id, 2018, 12, "EPA", %w[ score sourceIntensity waterIntensityTotal totalWasteDisposedandDivertedIntensity ])
        expect(property_metrics_list).to be_an_instance_of(PortfolioManager::Xml::PropertyMetricsType)
      ensure
        response_for_delete_property = @client_for_customer_account.delete_property(property_id)
        expect(response_for_delete_property.xmlattr_status).to eq("Ok")
      end
    end
  end
end
