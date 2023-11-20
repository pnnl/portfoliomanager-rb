require "xsd/mapping"

module PortfolioManager
  # Mapping Registry
  module MappingRegistry
    Registry = SOAP::Mapping::LiteralRegistry.new

    Registry.register(
      :class => PortfolioManager::Xml::ResponseType,
      :schema_type => XSD::QName.new(nil, "responseType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]],
        ["errors", "PortfolioManager::Xml::ErrorsType", [0, 1]],
        ["warnings", "PortfolioManager::Xml::WarningsType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "status") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ErrorType,
      :schema_type => XSD::QName.new(nil, "errorType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "errorNumber") => "SOAP::SOAPString",
        XSD::QName.new(nil, "errorDescription") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ErrorsType,
      :schema_type => XSD::QName.new(nil, "errorsType"),
      :schema_element => [
        ["error", "PortfolioManager::Xml::ErrorType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WarningsType,
      :schema_type => XSD::QName.new(nil, "warningsType"),
      :schema_element => [
        ["warning", "PortfolioManager::Xml::WarningType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WarningType,
      :schema_type => XSD::QName.new(nil, "warningType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "warningNumber") => "SOAP::SOAPString",
        XSD::QName.new(nil, "warningDescription") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::LinksType,
      :schema_type => XSD::QName.new(nil, "linksType"),
      :schema_element => [
        ["link", "PortfolioManager::Xml::LinkType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::LinkType,
      :schema_type => XSD::QName.new(nil, "linkType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "linkDescription") => "SOAP::SOAPString",
        XSD::QName.new(nil, "link") => "SOAP::SOAPAnyURI",
        XSD::QName.new(nil, "httpMethod") => "SOAP::SOAPString",
        XSD::QName.new(nil, "hint") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::HierarchyType,
      :schema_type => XSD::QName.new(nil, "hierarchyType"),
      :schema_element => [
        ["accountId", "SOAP::SOAPLong", [0, 1]],
        ["username", "SOAP::SOAPString", [0, 1]],
        ["propertyId", "SOAP::SOAPLong", [0, 1]],
        ["propertyUseId", "SOAP::SOAPLong", [0, 1]],
        ["useDetailId", "SOAP::SOAPLong", [0, 1]],
        ["meterId", "SOAP::SOAPLong", [0, 1]],
        ["consumptionDataId", "SOAP::SOAPLong", [0, 1]],
        ["wasteMeterDataId", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyType,
      :schema_type => XSD::QName.new(nil, "propertyType"),
      :schema_element => [
        ["name", "SOAP::SOAPString", [0, 1]],
        ["constructionStatus", "PortfolioManager::Xml::ConstructionStatusType", [0, 1]],
        ["primaryFunction", "PortfolioManager::Xml::PrimaryFunctionType", [0, 1]],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType", [0, 1]],
        ["irrigatedArea", "PortfolioManager::Xml::IrrigationAreaType", [0, 1]],
        ["yearBuilt", "SOAP::SOAPInt", [0, 1]],
        ["address", "PortfolioManager::Xml::AddressType", [0, 1]],
        ["numberOfBuildings", "SOAP::SOAPInt", [0, 1]],
        ["isFederalProperty", "SOAP::SOAPBoolean"],
        ["federalOwner", "PortfolioManager::Xml::CountryList", [0, 1]],
        ["agency", "PortfolioManager::Xml::AgencyType", [0, 1]],
        ["agencyDepartmentRegion", "SOAP::SOAPString", [0, 1]],
        ["federalCampus", "SOAP::SOAPString", [0, 1]],
        ["occupancyPercentage", "PortfolioManager::Xml::OccupancyType"],
        ["notes", "SOAP::SOAPString", [0, 1]],
        ["isInstitutionalProperty", "SOAP::SOAPBoolean", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AddressType,
      :schema_type => XSD::QName.new(nil, "addressType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "address1") => "SOAP::SOAPString",
        XSD::QName.new(nil, "address2") => "SOAP::SOAPString",
        XSD::QName.new(nil, "city") => "SOAP::SOAPString",
        XSD::QName.new(nil, "county") => "SOAP::SOAPString",
        XSD::QName.new(nil, "postalCode") => "SOAP::SOAPString",
        XSD::QName.new(nil, "state") => "SOAP::SOAPString",
        XSD::QName.new(nil, "otherState") => "SOAP::SOAPString",
        XSD::QName.new(nil, "country") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaType,
      :schema_type => XSD::QName.new(nil, "grossFloorAreaType"),
      :schema_basetype => XSD::QName.new(nil, "floorAreaTypeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_type => XSD::QName.new(nil, "optionalFloorAreaType"),
      :schema_basetype => XSD::QName.new(nil, "floorAreaTypeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::FloorAreaTypeBase,
      :schema_type => XSD::QName.new(nil, "floorAreaTypeBase"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_type => XSD::QName.new(nil, "useYesNoType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseStringType,
      :schema_type => XSD::QName.new(nil, "useStringType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_type => XSD::QName.new(nil, "useDecimalType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_type => XSD::QName.new(nil, "useIntegerType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType,
      :schema_type => XSD::QName.new(nil, "numberOfWeeklyIceResurfacingType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentCooledType,
      :schema_type => XSD::QName.new(nil, "percentCooledType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentHeatedType,
      :schema_type => XSD::QName.new(nil, "percentHeatedType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentOfficeCooledType,
      :schema_type => XSD::QName.new(nil, "percentOfficeCooledType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentOfficeHeatedType,
      :schema_type => XSD::QName.new(nil, "percentOfficeHeatedType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MonthsInUseType,
      :schema_type => XSD::QName.new(nil, "monthsInUseType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MonthsSchoolInUseType,
      :schema_type => XSD::QName.new(nil, "monthsSchoolInUseType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PoolType,
      :schema_type => XSD::QName.new(nil, "poolType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentPopulationType,
      :schema_type => XSD::QName.new(nil, "residentPopulationType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PoolSizeType,
      :schema_type => XSD::QName.new(nil, "poolSizeType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OwnedByType,
      :schema_type => XSD::QName.new(nil, "ownedByType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CoolingEquipmentRedundancyType,
      :schema_type => XSD::QName.new(nil, "coolingEquipmentRedundancyType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UpsSystemRedundancyType,
      :schema_type => XSD::QName.new(nil, "upsSystemRedundancyType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::HoursPerDayGuestsOnsiteType,
      :schema_type => XSD::QName.new(nil, "hoursPerDayGuestsOnsiteType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ItEnergyConfigurationType,
      :schema_type => XSD::QName.new(nil, "itEnergyConfigurationType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OnsiteLaundryType,
      :schema_type => XSD::QName.new(nil, "onsiteLaundryType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::NumberOfWeekdaysType,
      :schema_type => XSD::QName.new(nil, "numberOfWeekdaysType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType,
      :schema_type => XSD::QName.new(nil, "amountOfLaundryProcessedAnnuallyType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PlantDesignFlowRateType,
      :schema_type => XSD::QName.new(nil, "PlantDesignFlowRateType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType,
      :schema_type => XSD::QName.new(nil, "lengthOfAllOpenClosedRefrigerationUnitsType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CeilingHeightUnitsType,
      :schema_type => XSD::QName.new(nil, "ceilingHeightUnitsType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ClearHeightUnitsType,
      :schema_type => XSD::QName.new(nil, "clearHeightUnitsType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseDetailsType,
      :schema_type => XSD::QName.new(nil, "customUseDetailsType"),
      :schema_basetype => XSD::QName.new(nil, "useAttributeBase"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]],
        ["customName", "SOAP::SOAPString", [0, 1]],
        ["customUom", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::LogType,
      :schema_type => XSD::QName.new(nil, "logType"),
      :schema_element => [
        ["createdBy", "SOAP::SOAPString", [0, 1]],
        ["createdByAccountId", "SOAP::SOAPLong", [0, 1]],
        ["createdDate", "SOAP::SOAPDateTime", [0, 1]],
        ["lastUpdatedBy", "SOAP::SOAPString", [0, 1]],
        ["lastUpdatedByAccountId", "SOAP::SOAPLong", [0, 1]],
        ["lastUpdatedDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IrrigationAreaType,
      :schema_type => XSD::QName.new(nil, "irrigationAreaType"),
      :schema_basetype => XSD::QName.new(nil, "irrigationAreaTypeBase"),
      :schema_element => [
        ["value", nil]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "default") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::IrrigationAreaTypeBase,
      :schema_type => XSD::QName.new(nil, "irrigationAreaTypeBase"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "default") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::SharingResponseType,
      :schema_type => XSD::QName.new(nil, "sharingResponseType"),
      :schema_element => [
        ["action", "PortfolioManager::Xml::AcceptRejectType"],
        ["note", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TerminateShareResponseType,
      :schema_type => XSD::QName.new(nil, "terminateShareResponseType"),
      :schema_element => [
        ["note", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NotificationListType,
      :schema_type => XSD::QName.new(nil, "notificationListType"),
      :schema_element => [
        ["notification", "PortfolioManager::Xml::NotificationType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NotificationType,
      :schema_type => XSD::QName.new(nil, "notificationType"),
      :schema_element => [
        ["notificationTypeCode", "SOAP::SOAPString"],
        ["notificationId", "SOAP::SOAPLong"],
        ["description", "SOAP::SOAPString"],
        ["accountId", "SOAP::SOAPLong", [0, 1]],
        ["username", "SOAP::SOAPString"],
        ["propertyId", "SOAP::SOAPLong", [0, 1]],
        ["meterId", "SOAP::SOAPLong", [0, 1]],
        ["notificationCreatedDate", "SOAP::SOAPDateTime", [0, 1]],
        ["notificationCreatedBy", "SOAP::SOAPString", [0, 1]],
        ["notificationCreatedByAccountId", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PendingListType,
      :schema_type => XSD::QName.new(nil, "pendingListType"),
      :schema_element => [
        ["account", "PortfolioManager::Xml::PendingAccountsType[]", [0, nil]],
        ["property", "PortfolioManager::Xml::PendingPropertiesType[]", [0, nil]],
        ["meter", "PortfolioManager::Xml::PendingMetersType[]", [0, nil]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PendingAccountsType,
      :schema_type => XSD::QName.new(nil, "pendingAccountsType"),
      :schema_element => [
        ["accountId", "SOAP::SOAPLong"],
        ["username", "SOAP::SOAPString"],
        ["customFieldList", "PortfolioManager::Xml::CustomFieldList", [0, 1]],
        ["accountInfo", "PortfolioManager::Xml::AccountInfo"],
        ["connectionAudit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PendingPropertiesType,
      :schema_type => XSD::QName.new(nil, "pendingPropertiesType"),
      :schema_element => [
        ["propertyId", "SOAP::SOAPLong"],
        ["customFieldList", "PortfolioManager::Xml::CustomFieldList", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType"],
        ["accountId", "SOAP::SOAPLong"],
        ["username", "SOAP::SOAPString"],
        ["propertyInfo", "PortfolioManager::Xml::PropertyType"],
        ["shareAudit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PendingMetersType,
      :schema_type => XSD::QName.new(nil, "pendingMetersType"),
      :schema_element => [
        ["meterId", "SOAP::SOAPLong"],
        ["propertyId", "SOAP::SOAPLong"],
        ["accountId", "SOAP::SOAPLong"],
        ["username", "SOAP::SOAPString"],
        ["customFieldList", "PortfolioManager::Xml::CustomFieldList", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType"],
        ["propertyInfo", "PortfolioManager::Xml::PropertyType"],
        ["meterInfo", "PortfolioManager::Xml::MeterType", [0, 1]],
        ["wasteMeterInfo", "PortfolioManager::Xml::TypeOfWasteMeter", [0, 1]],
        ["shareAudit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterType,
      :schema_type => XSD::QName.new(nil, "meterType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["type", "PortfolioManager::Xml::TypeOfMeter"],
        ["name", "SOAP::SOAPString"],
        ["metered", "SOAP::SOAPBoolean", [0, 1]],
        ["unitOfMeasure", "SOAP::SOAPString"],
        ["firstBillDate", "SOAP::SOAPDate"],
        ["inUse", "SOAP::SOAPBoolean"],
        ["inactiveDate", "SOAP::SOAPDate", [0, 1]],
        ["otherDescription", "SOAP::SOAPString", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["aggregateMeter", "SOAP::SOAPBoolean", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TypeOfWasteMeter,
      :schema_type => XSD::QName.new(nil, "typeOfWasteMeter"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["name", "SOAP::SOAPString"],
        ["type", "PortfolioManager::Xml::WasteMeterType"],
        ["unitOfMeasure", "SOAP::SOAPString"],
        ["dataEntryMethod", "SOAP::SOAPString"],
        ["containerSize", "SOAP::SOAPDecimal", [0, 1]],
        ["firstBillDate", "SOAP::SOAPDate", [0, 1]],
        ["inUse", "SOAP::SOAPBoolean"],
        ["inactiveDate", "SOAP::SOAPDate", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AccountType,
      :schema_type => XSD::QName.new(nil, "accountType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["username", "SOAP::SOAPString"],
        ["password", "SOAP::SOAPString"],
        ["contact", "PortfolioManager::Xml::ContactType"],
        ["organization", "PortfolioManager::Xml::OrganizationType"],
        ["webserviceUser", "SOAP::SOAPBoolean"],
        ["searchable", "SOAP::SOAPBoolean"],
        ["includeTestPropertiesInGraphics", "SOAP::SOAPBoolean", [0, 1]],
        ["emailPreferenceCanadianAccount", "SOAP::SOAPBoolean", [0, 1]],
        ["billboardMetric", "SOAP::SOAPString", [0, 1]],
        ["languagePreference", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ContactType,
      :schema_type => XSD::QName.new(nil, "contactType"),
      :schema_element => [
        ["firstName", "SOAP::SOAPString"],
        ["lastName", "SOAP::SOAPString"],
        ["email", "SOAP::SOAPString"],
        ["address", "PortfolioManager::Xml::AddressType"],
        ["jobTitle", "SOAP::SOAPString"],
        ["phone", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OrganizationType,
      :schema_type => XSD::QName.new(nil, "organizationType"),
      :schema_element => [
        ["primaryBusiness", "PortfolioManager::Xml::PrimaryBusinessType"],
        ["otherBusinessDescription", "SOAP::SOAPString", [0, 1]],
        ["energyStarPartner", "SOAP::SOAPBoolean"],
        ["energyStarPartnerType", "PortfolioManager::Xml::TypeOfEnergyStarPartner", [0, 1]],
        ["otherPartnerDescription", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AgencyType,
      :schema_type => XSD::QName.new(nil, "AgencyType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "code") => "SOAP::SOAPString",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "country") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyMetricsType,
      :schema_type => XSD::QName.new(nil, "propertyMetricsType"),
      :schema_element => [
        ["metric", "PortfolioManager::Xml::Metric[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "year") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "month") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "periodType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "propertyId") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::Metric,
      :schema_type => XSD::QName.new(nil, "metric"),
      :schema_element => [
        ["monthlyMetric", "PortfolioManager::Xml::ReportMetricValuesWs[]", [0, nil]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "uom") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "autoGenerated") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetricValuesWs,
      :schema_type => XSD::QName.new(nil, "reportMetricValuesWs"),
      :schema_element => [
        ["value", "SOAP::SOAPString[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "month") => "SOAP::SOAPString",
        XSD::QName.new(nil, "year") => "SOAP::SOAPString",
        XSD::QName.new(nil, "periodType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "autoGenerated") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyMetricsList,
      :schema_type => XSD::QName.new(nil, "propertyMetricsList"),
      :schema_element => [
        ["propertyMetrics", "PortfolioManager::Xml::PropertyMetricsType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EnergyPerformanceProjectType,
      :schema_type => XSD::QName.new(nil, "energyPerformanceProjectType"),
      :schema_element => [
        ["projectName", "SOAP::SOAPString", [0, 1]],
        ["projectDescription", "SOAP::SOAPString", [0, 1]],
        ["propertyId", "SOAP::SOAPLong", [0, 1]],
        ["propertyName", "SOAP::SOAPString", [0, 1]],
        ["implementationDate", "SOAP::SOAPDate", [0, 1]],
        ["category", "PortfolioManager::Xml::CategoryType", [0, 1]],
        ["categoryOtherDescription", "SOAP::SOAPString", [0, 1]],
        ["investmentCost", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedSavingsCost", "SOAP::SOAPDecimal", [0, 1]],
        ["evaluationPeriod", "PortfolioManager::Xml::EvaluationPeriodType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EvaluationPeriodType,
      :schema_type => XSD::QName.new(nil, "evaluationPeriodType"),
      :schema_element => [
        ["preImplementationDate", "SOAP::SOAPDate", [0, 1]],
        ["postImplementationDate", "SOAP::SOAPDate", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType,
      :schema_type => XSD::QName.new(nil, "unAuthDesignType"),
      :schema_element => [
        ["propertyInfo", "PortfolioManager::Xml::PropertyDesignType"],
        ["propertyUses", "PortfolioManager::Xml::UnAuthDesignType::PropertyUses"],
        ["drinkingWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["wasteWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["itSiteEnergy", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedEnergyList", "PortfolioManager::Xml::UnAuthDesignType::EstimatedEnergyList", [0, 1]],
        ["target", "PortfolioManager::Xml::UnAuthDesignType::Target"],
        ["internationalWeatherStationId", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::PropertyUses,
      :schema_name => XSD::QName.new(nil, "propertyUses"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["prison", "PortfolioManager::Xml::OtherType[]"],
        ["refrigeratedWarehouse", "PortfolioManager::Xml::RefrigeratedWarehouseType[]"],
        ["retail", "PortfolioManager::Xml::RetailType[]"],
        ["hospital", "PortfolioManager::Xml::HospitalType[]"],
        ["medicalOffice", "PortfolioManager::Xml::MedicalOfficeType[]"],
        ["dataCenter", "PortfolioManager::Xml::DataCenterType[]"],
        ["courthouse", "PortfolioManager::Xml::CourthouseType[]"],
        ["singleFamilyHome", "PortfolioManager::Xml::SingleFamilyHomeType[]"],
        ["nonRefrigeratedWarehouse", "PortfolioManager::Xml::NonRefrigeratedWarehouseType[]"],
        ["multifamilyHousing", "PortfolioManager::Xml::MultifamilyHousingType[]"],
        ["office", "PortfolioManager::Xml::OfficeType[]"],
        ["wholesaleClubSupercenter", "PortfolioManager::Xml::WholesaleClubSupercenterType[]"],
        ["selfStorageFacility", "PortfolioManager::Xml::SelfStorageFacilityType[]"],
        ["seniorLivingCommunity", "PortfolioManager::Xml::SeniorLivingCommunityType[]"],
        ["residentialCareFacility", "PortfolioManager::Xml::ResidentialCareFacilityType[]"],
        ["swimmingPool", "PortfolioManager::Xml::SwimmingPoolType[]"],
        ["residenceHallDormitory", "PortfolioManager::Xml::ResidenceHallDormitoryType[]"],
        ["wastewaterTreatmentPlant", "PortfolioManager::Xml::WastewaterTreatmentPlantType[]"],
        ["distributionCenter", "PortfolioManager::Xml::DistributionCenterType[]"],
        ["worshipFacility", "PortfolioManager::Xml::WorshipFacilityType[]"],
        ["financialOffice", "PortfolioManager::Xml::FinancialOfficeType[]"],
        ["drinkingWaterTreatmentAndDistribution", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType[]"],
        ["parking", "PortfolioManager::Xml::ParkingType[]"],
        ["supermarket", "PortfolioManager::Xml::SupermarketType[]"],
        ["barracks", "PortfolioManager::Xml::BarracksType[]"],
        ["hotel", "PortfolioManager::Xml::HotelType[]"],
        ["k12School", "PortfolioManager::Xml::K12SchoolType[]"],
        ["bankBranch", "PortfolioManager::Xml::BankBranchType[]"],
        ["collegeUniversity", "PortfolioManager::Xml::CollegeUniversityType[]"],
        ["indoorArena", "PortfolioManager::Xml::IndoorArenaType[]"],
        ["otherStadium", "PortfolioManager::Xml::OtherStadiumType[]"],
        ["stadiumClosed", "PortfolioManager::Xml::StadiumClosedType[]"],
        ["stadiumOpen", "PortfolioManager::Xml::StadiumOpenType[]"],
        ["manufacturingIndustrialPlant", "PortfolioManager::Xml::OtherType[]"],
        ["ambulatorySurgicalCenter", "PortfolioManager::Xml::OtherType[]"],
        ["bowlingAlley", "PortfolioManager::Xml::OtherType[]"],
        ["otherPublicServices", "PortfolioManager::Xml::OtherType[]"],
        ["otherLodgingResidential", "PortfolioManager::Xml::OtherType[]"],
        ["casino", "PortfolioManager::Xml::OtherType[]"],
        ["personalServices", "PortfolioManager::Xml::OtherType[]"],
        ["mailingCenterPostOffice", "PortfolioManager::Xml::MailingCenterPostOfficeType[]"],
        ["library", "PortfolioManager::Xml::OtherType[]"],
        ["otherSpecialityHospital", "PortfolioManager::Xml::OtherType[]"],
        ["conventionCenter", "PortfolioManager::Xml::OtherType[]"],
        ["veterinaryOffice", "PortfolioManager::Xml::OtherType[]"],
        ["urgentCareClinicOtherOutpatient", "PortfolioManager::Xml::OtherType[]"],
        ["energyPowerStation", "PortfolioManager::Xml::OtherType[]"],
        ["otherServices", "PortfolioManager::Xml::OtherType[]"],
        ["barNightclub", "PortfolioManager::Xml::OtherType[]"],
        ["otherUtility", "PortfolioManager::Xml::OtherType[]"],
        ["zoo", "PortfolioManager::Xml::OtherType[]"],
        ["vehicleDealership", "PortfolioManager::Xml::VehicleDealershipType[]"],
        ["museum", "PortfolioManager::Xml::OtherType[]"],
        ["otherRecreation", "PortfolioManager::Xml::OtherType[]"],
        ["otherRestaurantBar", "PortfolioManager::Xml::OtherType[]"],
        ["lifestyleCenter", "PortfolioManager::Xml::OtherType[]"],
        ["policeStation", "PortfolioManager::Xml::OtherType[]"],
        ["preschoolDaycare", "PortfolioManager::Xml::OtherType[]"],
        ["raceTrack", "PortfolioManager::Xml::OtherType[]"],
        ["fastFoodRestaurant", "PortfolioManager::Xml::OtherType[]"],
        ["laboratory", "PortfolioManager::Xml::OtherType[]"],
        ["convenienceStoreWithoutGasStation", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType[]"],
        ["repairServices", "PortfolioManager::Xml::OtherType[]"],
        ["otherTechnologyScience", "PortfolioManager::Xml::OtherType[]"],
        ["fireStation", "PortfolioManager::Xml::OtherType[]"],
        ["foodSales", "PortfolioManager::Xml::FoodSalesType[]"],
        ["performingArts", "PortfolioManager::Xml::OtherType[]"],
        ["outpatientRehabilitationPhysicalTherapy", "PortfolioManager::Xml::OtherType[]"],
        ["stripMall", "PortfolioManager::Xml::OtherType[]"],
        ["rollerRink", "PortfolioManager::Xml::OtherType[]"],
        ["otherEducation", "PortfolioManager::Xml::OtherType[]"],
        ["fitnessCenterHealthClubGym", "PortfolioManager::Xml::OtherType[]"],
        ["aquarium", "PortfolioManager::Xml::OtherType[]"],
        ["foodService", "PortfolioManager::Xml::OtherType[]"],
        ["restaurant", "PortfolioManager::Xml::OtherType[]"],
        ["enclosedMall", "PortfolioManager::Xml::OtherType[]"],
        ["iceCurlingRink", "PortfolioManager::Xml::IceCurlingRinkType[]"],
        ["adultEducation", "PortfolioManager::Xml::OtherType[]"],
        ["otherEntertainmentPublicAssembly", "PortfolioManager::Xml::OtherType[]"],
        ["movieTheater", "PortfolioManager::Xml::OtherType[]"],
        ["transportationTerminalStation", "PortfolioManager::Xml::OtherType[]"],
        ["vocationalSchool", "PortfolioManager::Xml::OtherType[]"],
        ["socialMeetingHall", "PortfolioManager::Xml::OtherType[]"],
        ["otherMall", "PortfolioManager::Xml::OtherType[]"],
        ["convenienceStoreWithGasStation", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType[]"],
        ["other", "PortfolioManager::Xml::OtherType[]"],
        ["electricVehicleChargingStation", "PortfolioManager::Xml::EvChargingStationType[]"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::EstimatedEnergyList,
      :schema_name => XSD::QName.new(nil, "estimatedEnergyList"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["entries", "PortfolioManager::Xml::EstimatedEnergyListType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::Target,
      :schema_name => XSD::QName.new(nil, "target"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["targetTypeScore", "PortfolioManager::Xml::TargetTypeScoreType"],
        ["targetTypePercentage", "PortfolioManager::Xml::TargetTypePercentageType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RefrigeratedWarehouseType,
      :schema_type => XSD::QName.new(nil, "refrigeratedWarehouseType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::RefrigeratedWarehouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RefrigeratedWarehouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RetailType,
      :schema_type => XSD::QName.new(nil, "retailType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::RetailType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RetailType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["singleStore", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["exteriorEntranceToThePublic", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HospitalType,
      :schema_type => XSD::QName.new(nil, "hospitalType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::HospitalType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HospitalType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfStaffedBeds", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfMriMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfSterilizationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["onSiteLaundryFacility", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasLaboratory", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["isTertiaryCare", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["maximumNumberOfFloors", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["ownedBy", "PortfolioManager::Xml::OwnedByType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MedicalOfficeType,
      :schema_type => XSD::QName.new(nil, "medicalOfficeType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MedicalOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MedicalOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfSurgicalOperatingBeds", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["surgeryCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfMriMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataCenterType,
      :schema_type => XSD::QName.new(nil, "dataCenterType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DataCenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataCenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["estimatesApplied", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["coolingEquipmentRedundancy", "PortfolioManager::Xml::CoolingEquipmentRedundancyType", [0, 1]],
        ["itEnergyMeterConfiguration", "PortfolioManager::Xml::ItEnergyConfigurationType", [0, 1]],
        ["upsSystemRedundancy", "PortfolioManager::Xml::UpsSystemRedundancyType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CourthouseType,
      :schema_type => XSD::QName.new(nil, "courthouseType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CourthouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CourthouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SingleFamilyHomeType,
      :schema_type => XSD::QName.new(nil, "singleFamilyHomeType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SingleFamilyHomeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SingleFamilyHomeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfBedrooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfPeople", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NonRefrigeratedWarehouseType,
      :schema_type => XSD::QName.new(nil, "nonRefrigeratedWarehouseType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::NonRefrigeratedWarehouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NonRefrigeratedWarehouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MultifamilyHousingType,
      :schema_type => XSD::QName.new(nil, "multifamilyHousingType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MultifamilyHousingType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MultifamilyHousingType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfBedrooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLivingUnitsMidRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLaundryHookupsInAllUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfLaundryHookupsInCommonArea", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfResidentialLivingUnitsLowRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["numberOfResidentialLivingUnitsHighRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["residentPopulation", "PortfolioManager::Xml::ResidentPopulationType", [0, 1]],
        ["governmentSubsidizedHousing", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["commonEntrance", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OfficeType,
      :schema_type => XSD::QName.new(nil, "officeType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WholesaleClubSupercenterType,
      :schema_type => XSD::QName.new(nil, "wholesaleClubSupercenterType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WholesaleClubSupercenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WholesaleClubSupercenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["exteriorEntranceToThePublic", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["singleStore", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SeniorLivingCommunityType,
      :schema_type => XSD::QName.new(nil, "seniorLivingCommunityType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SeniorLivingCommunityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SeniorLivingCommunityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfResidents", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["maximumResidentCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLiftSystems", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentialCareFacilityType,
      :schema_type => XSD::QName.new(nil, "residentialCareFacilityType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ResidentialCareFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentialCareFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfResidents", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["maximumResidentCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLiftSystems", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SwimmingPoolType,
      :schema_type => XSD::QName.new(nil, "swimmingPoolType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SwimmingPoolType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SwimmingPoolType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["poolSize", "PortfolioManager::Xml::PoolSizeType"],
        ["poolLocation", "PortfolioManager::Xml::PoolType", [0, 1]],
        ["monthsInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidenceHallDormitoryType,
      :schema_type => XSD::QName.new(nil, "residenceHallDormitoryType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ResidenceHallDormitoryType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidenceHallDormitoryType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["hasComputerLab", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasDiningHall", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WastewaterTreatmentPlantType,
      :schema_type => XSD::QName.new(nil, "wastewaterTreatmentPlantType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WastewaterTreatmentPlantType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WastewaterTreatmentPlantType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["averageInfluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageEffluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["plantDesignFlowRate", "PortfolioManager::Xml::PlantDesignFlowRateType"],
        ["fixedFilmTrickleFiltrationProcess", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["nutrientRemoval", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DistributionCenterType,
      :schema_type => XSD::QName.new(nil, "distributionCenterType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DistributionCenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DistributionCenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WorshipFacilityType,
      :schema_type => XSD::QName.new(nil, "worshipFacilityType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WorshipFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WorshipFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["seatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["ceilingHeight", "PortfolioManager::Xml::CeilingHeightUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfWeekdaysOpen", "PortfolioManager::Xml::NumberOfWeekdaysType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FinancialOfficeType,
      :schema_type => XSD::QName.new(nil, "financialOfficeType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::FinancialOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FinancialOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType,
      :schema_type => XSD::QName.new(nil, "drinkingWaterTreatmentAndDistributionType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ParkingType,
      :schema_type => XSD::QName.new(nil, "parkingType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ParkingType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ParkingType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["supplementalHeating", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["openFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["completelyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["partiallyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SupermarketType,
      :schema_type => XSD::QName.new(nil, "supermarketType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SupermarketType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SupermarketType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FoodSalesType,
      :schema_type => XSD::QName.new(nil, "foodSalesType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::FoodSalesType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FoodSalesType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithGasStationType,
      :schema_type => XSD::QName.new(nil, "convenienceStoreWithGasStationType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithGasStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCookingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWarmingHeatingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType,
      :schema_type => XSD::QName.new(nil, "convenienceStoreWithoutGasStationType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCookingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWarmingHeatingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BarracksType,
      :schema_type => XSD::QName.new(nil, "barracksType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::BarracksType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BarracksType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["hasComputerLab", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasDiningHall", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HotelType,
      :schema_type => XSD::QName.new(nil, "hotelType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::HotelType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HotelType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["fullServiceSpaFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["gymCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["hoursPerDayGuestsOnsite", "PortfolioManager::Xml::HoursPerDayGuestsOnsiteType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfGuestMealsServedPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfHotelRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["laundryFacility", "PortfolioManager::Xml::OnsiteLaundryType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["amountOfLaundryProcessedAnnually", "PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["grossFloorAreaHotelConferenceSpace", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::K12SchoolType,
      :schema_type => XSD::QName.new(nil, "k12SchoolType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::K12SchoolType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::K12SchoolType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["openOnWeekends", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["isHighSchool", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["monthsInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]],
        ["schoolDistrict", "PortfolioManager::Xml::UseStringType", [0, 1]],
        ["studentSeatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["gymnasiumFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BankBranchType,
      :schema_type => XSD::QName.new(nil, "bankBranchType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::BankBranchType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BankBranchType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CollegeUniversityType,
      :schema_type => XSD::QName.new(nil, "collegeUniversityType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CollegeUniversityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CollegeUniversityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["enrollment", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["grantDollars", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IndoorArenaType,
      :schema_type => XSD::QName.new(nil, "indoorArenaType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::IndoorArenaType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IndoorArenaType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherStadiumType,
      :schema_type => XSD::QName.new(nil, "otherStadiumType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherStadiumType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherStadiumType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumClosedType,
      :schema_type => XSD::QName.new(nil, "stadiumClosedType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::StadiumClosedType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumClosedType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumOpenType,
      :schema_type => XSD::QName.new(nil, "stadiumOpenType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::StadiumOpenType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumOpenType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IceCurlingRinkType,
      :schema_type => XSD::QName.new(nil, "iceCurlingRinkType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::IceCurlingRinkType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IceCurlingRinkType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfIndoorIceRinks", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["totalIceRinkSurfaceAreaForAllRinks", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["monthsMainIndoorIceRinkInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]],
        ["numberOfWeeklyIceResurfacingForAllRinks", "PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCurlingSheets", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["spectatorSeatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SelfStorageFacilityType,
      :schema_type => XSD::QName.new(nil, "selfStorageFacilityType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SelfStorageFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SelfStorageFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_type => XSD::QName.new(nil, "otherType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EvChargingStationType,
      :schema_type => XSD::QName.new(nil, "evChargingStationType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::EvChargingStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EvChargingStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["numberOfLevelOneEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLevelTwoEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfDcFastEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::VehicleDealershipType,
      :schema_type => XSD::QName.new(nil, "vehicleDealershipType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::VehicleDealershipType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::VehicleDealershipType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfVehiclesInInventory", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MailingCenterPostOfficeType,
      :schema_type => XSD::QName.new(nil, "mailingCenterPostOfficeType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MailingCenterPostOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MailingCenterPostOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLettersPackagesPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["deliveryFacility", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseType,
      :schema_type => XSD::QName.new(nil, "customUseType"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CustomUseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["customUseDetail1", "PortfolioManager::Xml::CustomUseDetailsType", [0, 1]],
        ["customUseDetail2", "PortfolioManager::Xml::CustomUseDetailsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyDesignType,
      :schema_type => XSD::QName.new(nil, "propertyDesignType"),
      :schema_element => [
        ["name", "SOAP::SOAPString"],
        ["primaryFunction", "PortfolioManager::Xml::PrimaryFunctionType"],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["plannedConstructionCompletionYear", "SOAP::SOAPInt"],
        ["address", "PortfolioManager::Xml::AddressType"],
        ["numberOfBuildings", "SOAP::SOAPInt"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType,
      :schema_type => XSD::QName.new(nil, "designBaseType"),
      :schema_element => [
        ["propertyUses", "PortfolioManager::Xml::DesignBaseType::PropertyUses"],
        ["drinkingWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["wasteWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["itSiteEnergy", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedEnergyList", "PortfolioManager::Xml::DesignBaseType::EstimatedEnergyList", [0, 1]],
        ["target", "PortfolioManager::Xml::DesignBaseType::Target"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::PropertyUses,
      :schema_name => XSD::QName.new(nil, "propertyUses"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        [
          ["prison", "PortfolioManager::Xml::OtherType[]"],
          ["refrigeratedWarehouse", "PortfolioManager::Xml::RefrigeratedWarehouseType[]"],
          ["retail", "PortfolioManager::Xml::RetailType[]"],
          ["hospital", "PortfolioManager::Xml::HospitalType[]"],
          ["medicalOffice", "PortfolioManager::Xml::MedicalOfficeType[]"],
          ["dataCenter", "PortfolioManager::Xml::DataCenterType[]"],
          ["courthouse", "PortfolioManager::Xml::CourthouseType[]"],
          ["singleFamilyHome", "PortfolioManager::Xml::SingleFamilyHomeType[]"],
          ["nonRefrigeratedWarehouse", "PortfolioManager::Xml::NonRefrigeratedWarehouseType[]"],
          ["multifamilyHousing", "PortfolioManager::Xml::MultifamilyHousingType[]"],
          ["office", "PortfolioManager::Xml::OfficeType[]"],
          ["wholesaleClubSupercenter", "PortfolioManager::Xml::WholesaleClubSupercenterType[]"],
          ["selfStorageFacility", "PortfolioManager::Xml::SelfStorageFacilityType[]"],
          ["seniorLivingCommunity", "PortfolioManager::Xml::SeniorLivingCommunityType[]"],
          ["residentialCareFacility", "PortfolioManager::Xml::ResidentialCareFacilityType[]"],
          ["swimmingPool", "PortfolioManager::Xml::SwimmingPoolType[]"],
          ["residenceHallDormitory", "PortfolioManager::Xml::ResidenceHallDormitoryType[]"],
          ["wastewaterTreatmentPlant", "PortfolioManager::Xml::WastewaterTreatmentPlantType[]"],
          ["distributionCenter", "PortfolioManager::Xml::DistributionCenterType[]"],
          ["worshipFacility", "PortfolioManager::Xml::WorshipFacilityType[]"],
          ["financialOffice", "PortfolioManager::Xml::FinancialOfficeType[]"],
          ["drinkingWaterTreatmentAndDistribution", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType[]"],
          ["parking", "PortfolioManager::Xml::ParkingType[]"],
          ["supermarket", "PortfolioManager::Xml::SupermarketType[]"],
          ["barracks", "PortfolioManager::Xml::BarracksType[]"],
          ["hotel", "PortfolioManager::Xml::HotelType[]"],
          ["k12School", "PortfolioManager::Xml::K12SchoolType[]"],
          ["bankBranch", "PortfolioManager::Xml::BankBranchType[]"],
          ["collegeUniversity", "PortfolioManager::Xml::CollegeUniversityType[]"],
          ["indoorArena", "PortfolioManager::Xml::IndoorArenaType[]"],
          ["otherStadium", "PortfolioManager::Xml::OtherStadiumType[]"],
          ["stadiumClosed", "PortfolioManager::Xml::StadiumClosedType[]"],
          ["stadiumOpen", "PortfolioManager::Xml::StadiumOpenType[]"],
          ["manufacturingIndustrialPlant", "PortfolioManager::Xml::OtherType[]"],
          ["ambulatorySurgicalCenter", "PortfolioManager::Xml::OtherType[]"],
          ["bowlingAlley", "PortfolioManager::Xml::OtherType[]"],
          ["otherPublicServices", "PortfolioManager::Xml::OtherType[]"],
          ["otherLodgingResidential", "PortfolioManager::Xml::OtherType[]"],
          ["casino", "PortfolioManager::Xml::OtherType[]"],
          ["personalServices", "PortfolioManager::Xml::OtherType[]"],
          ["mailingCenterPostOffice", "PortfolioManager::Xml::MailingCenterPostOfficeType[]"],
          ["library", "PortfolioManager::Xml::OtherType[]"],
          ["otherSpecialityHospital", "PortfolioManager::Xml::OtherType[]"],
          ["conventionCenter", "PortfolioManager::Xml::OtherType[]"],
          ["veterinaryOffice", "PortfolioManager::Xml::OtherType[]"],
          ["urgentCareClinicOtherOutpatient", "PortfolioManager::Xml::OtherType[]"],
          ["energyPowerStation", "PortfolioManager::Xml::OtherType[]"],
          ["otherServices", "PortfolioManager::Xml::OtherType[]"],
          ["barNightclub", "PortfolioManager::Xml::OtherType[]"],
          ["otherUtility", "PortfolioManager::Xml::OtherType[]"],
          ["zoo", "PortfolioManager::Xml::OtherType[]"],
          ["vehicleDealership", "PortfolioManager::Xml::VehicleDealershipType[]"],
          ["museum", "PortfolioManager::Xml::OtherType[]"],
          ["otherRecreation", "PortfolioManager::Xml::OtherType[]"],
          ["otherRestaurantBar", "PortfolioManager::Xml::OtherType[]"],
          ["lifestyleCenter", "PortfolioManager::Xml::OtherType[]"],
          ["policeStation", "PortfolioManager::Xml::OtherType[]"],
          ["preschoolDaycare", "PortfolioManager::Xml::OtherType[]"],
          ["raceTrack", "PortfolioManager::Xml::OtherType[]"],
          ["fastFoodRestaurant", "PortfolioManager::Xml::OtherType[]"],
          ["laboratory", "PortfolioManager::Xml::OtherType[]"],
          ["convenienceStoreWithoutGasStation", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType[]"],
          ["repairServices", "PortfolioManager::Xml::OtherType[]"],
          ["otherTechnologyScience", "PortfolioManager::Xml::OtherType[]"],
          ["fireStation", "PortfolioManager::Xml::OtherType[]"],
          ["foodSales", "PortfolioManager::Xml::FoodSalesType[]"],
          ["performingArts", "PortfolioManager::Xml::OtherType[]"],
          ["outpatientRehabilitationPhysicalTherapy", "PortfolioManager::Xml::OtherType[]"],
          ["stripMall", "PortfolioManager::Xml::OtherType[]"],
          ["rollerRink", "PortfolioManager::Xml::OtherType[]"],
          ["otherEducation", "PortfolioManager::Xml::OtherType[]"],
          ["fitnessCenterHealthClubGym", "PortfolioManager::Xml::OtherType[]"],
          ["aquarium", "PortfolioManager::Xml::OtherType[]"],
          ["foodService", "PortfolioManager::Xml::OtherType[]"],
          ["restaurant", "PortfolioManager::Xml::OtherType[]"],
          ["enclosedMall", "PortfolioManager::Xml::OtherType[]"],
          ["iceCurlingRink", "PortfolioManager::Xml::IceCurlingRinkType[]"],
          ["adultEducation", "PortfolioManager::Xml::OtherType[]"],
          ["otherEntertainmentPublicAssembly", "PortfolioManager::Xml::OtherType[]"],
          ["movieTheater", "PortfolioManager::Xml::OtherType[]"],
          ["transportationTerminalStation", "PortfolioManager::Xml::OtherType[]"],
          ["vocationalSchool", "PortfolioManager::Xml::OtherType[]"],
          ["socialMeetingHall", "PortfolioManager::Xml::OtherType[]"],
          ["otherMall", "PortfolioManager::Xml::OtherType[]"],
          ["convenienceStoreWithGasStation", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType[]"],
          ["other", "PortfolioManager::Xml::OtherType[]"],
          ["electricVehicleChargingStation", "PortfolioManager::Xml::EvChargingStationType[]"]
        ]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::EstimatedEnergyList,
      :schema_name => XSD::QName.new(nil, "estimatedEnergyList"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["entries", "PortfolioManager::Xml::EstimatedEnergyListType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::Target,
      :schema_name => XSD::QName.new(nil, "target"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["targetTypeScore", "PortfolioManager::Xml::TargetTypeScoreType"],
        ["targetTypePercentage", "PortfolioManager::Xml::TargetTypePercentageType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TargetTypeScoreType,
      :schema_type => XSD::QName.new(nil, "targetTypeScoreType"),
      :schema_element => [
        ["value", "PortfolioManager::Xml::TargetTypeScoreValuesType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TargetTypePercentageType,
      :schema_type => XSD::QName.new(nil, "targetTypePercentageType"),
      :schema_element => [
        ["value", "PortfolioManager::Xml::TargetTypePercentageValuesType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EstimatedEnergyListType,
      :schema_type => XSD::QName.new(nil, "estimatedEnergyListType"),
      :schema_element => [
        ["designEntry", "PortfolioManager::Xml::EstimatedEnergyType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EstimatedEnergyType,
      :schema_type => XSD::QName.new(nil, "estimatedEnergyType"),
      :schema_element => [
        ["energyType", "PortfolioManager::Xml::AllEnergyMetersType"],
        ["energyUnit", "PortfolioManager::Xml::DesignUnitOfMeasure"],
        ["estimatedAnnualEnergyUsage", "SOAP::SOAPDecimal"],
        ["energyRateCost", "SOAP::SOAPDecimal", [0, 1]],
        ["energyRateCostUnit", "PortfolioManager::Xml::DesignUnitOfMeasure", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterDataType,
      :schema_type => XSD::QName.new(nil, "meterDataType"),
      :schema_element => [
        ["meterConsumption", "PortfolioManager::Xml::MeterConsumptionType[]", [0, 120]],
        ["meterDelivery", "PortfolioManager::Xml::MeterDeliveryType[]", [0, 120]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterConsumptionType,
      :schema_type => XSD::QName.new(nil, "meterConsumptionType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["startDate", "SOAP::SOAPDate"],
        ["endDate", "SOAP::SOAPDate"],
        ["usage", "SOAP::SOAPDecimal"],
        ["cost", nil, [0, 1]],
        ["energyExportedOffSite", "SOAP::SOAPDecimal", [0, 1]],
        ["greenPower", "PortfolioManager::Xml::GreenPowerType", [0, 1]],
        ["rECOwnership", ["SOAP::SOAPString", XSD::QName.new(nil, "RECOwnership")], [0, 1]],
        ["demandTracking", "PortfolioManager::Xml::DemandTrackingType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "isGreenPower") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterDeliveryType,
      :schema_type => XSD::QName.new(nil, "meterDeliveryType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["deliveryDate", "SOAP::SOAPDate"],
        ["quantity", "SOAP::SOAPDecimal"],
        ["cost", nil, [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GreenPowerType,
      :schema_type => XSD::QName.new(nil, "greenPowerType"),
      :schema_element => [
        ["value", "SOAP::SOAPDecimal", [0, 1]],
        ["sources", "PortfolioManager::Xml::GreenPowerType::Sources", [0, 1]],
        ["generationLocation", "PortfolioManager::Xml::GreenPowerType::GenerationLocation", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::GreenPowerType::Sources,
      :schema_name => XSD::QName.new(nil, "sources"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["biomassPct", nil, [0, 1]],
        ["biogasPct", nil, [0, 1]],
        ["geothermalPct", nil, [0, 1]],
        ["smallHydroPct", nil, [0, 1]],
        ["solarPct", nil, [0, 1]],
        ["windPct", nil, [0, 1]],
        ["unknownPct", nil, [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::GreenPowerType::GenerationLocation,
      :schema_name => XSD::QName.new(nil, "generationLocation"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [ :choice,
        ["generationPlant", nil],
        ["eGridSubRegion", "SOAP::SOAPString"],
        ["unknown", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DemandTrackingType,
      :schema_type => XSD::QName.new(nil, "demandTrackingType"),
      :schema_element => [
        ["demand", nil, [0, 1]],
        ["demandCost", nil, [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterPropertyAssociationListType,
      :schema_type => XSD::QName.new(nil, "meterPropertyAssociationListType"),
      :schema_element => [
        ["energyMeterAssociation", "PortfolioManager::Xml::EnergyMeterAssocAndConfigType", [0, 1]],
        ["waterMeterAssociation", "PortfolioManager::Xml::WaterMeterAssocAndConfigType", [0, 1]],
        ["wasteMeterAssociation", "PortfolioManager::Xml::WasteMeterAssocAndConfigType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EnergyMeterAssocAndConfigType,
      :schema_type => XSD::QName.new(nil, "energyMeterAssocAndConfigType"),
      :schema_element => [
        ["meters", "PortfolioManager::Xml::MeterListType"],
        ["propertyRepresentation", "PortfolioManager::Xml::PropertyRepresentation"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WaterMeterAssocAndConfigType,
      :schema_type => XSD::QName.new(nil, "waterMeterAssocAndConfigType"),
      :schema_element => [
        ["meters", "PortfolioManager::Xml::MeterListType"],
        ["propertyRepresentation", "PortfolioManager::Xml::PropertyRepresentation"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterAssocAndConfigType,
      :schema_type => XSD::QName.new(nil, "wasteMeterAssocAndConfigType"),
      :schema_element => [
        ["meters", "PortfolioManager::Xml::MeterListType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterListType,
      :schema_type => XSD::QName.new(nil, "meterListType"),
      :schema_element => [
        ["meterId", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TenantCommonAreaEnergyUseInformationType,
      :schema_type => XSD::QName.new(nil, "tenantCommonAreaEnergyUseInformationType"),
      :schema_element => [
        ["energyUse", "PortfolioManager::Xml::TenantCommonAreaEnergyType[]", [1, 8]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MappingType,
      :schema_type => XSD::QName.new(nil, "mappingType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BaselineAndTargetType,
      :schema_type => XSD::QName.new(nil, "baselineAndTargetType"),
      :schema_element => [
        ["baseline", "PortfolioManager::Xml::BaselineType", [0, 1]],
        ["target", "PortfolioManager::Xml::PerformanceTargetType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BaselineType,
      :schema_type => XSD::QName.new(nil, "baselineType"),
      :schema_element => [
        ["energyBaselineDate", nil, [0, 1]],
        ["waterBaselineDate", nil, [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PerformanceTargetType,
      :schema_type => XSD::QName.new(nil, "performanceTargetType"),
      :schema_element => [
        ["targetMetric", "SOAP::SOAPString"],
        ["targetValue", "SOAP::SOAPInteger", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AlertsType,
      :schema_type => XSD::QName.new(nil, "alertsType"),
      :schema_element => [
        ["alert", "PortfolioManager::Xml::AlertsType::Alert[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "year") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "month") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "propertyId") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AlertsType::Alert,
      :schema_name => XSD::QName.new(nil, "alert"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["name", "SOAP::SOAPString"],
        ["description", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterEntryType,
      :schema_type => XSD::QName.new(nil, "wasteMeterEntryType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["startDate", "SOAP::SOAPDate"],
        ["endDate", "SOAP::SOAPDate", [0, 1]],
        ["quantity", "SOAP::SOAPDecimal", [0, 1]],
        ["timesEmptied", "SOAP::SOAPDecimal", [0, 1]],
        ["averagePercentFull", "SOAP::SOAPLong", [0, 1]],
        ["cost", nil, [0, 1]],
        ["disposalDestination", "PortfolioManager::Xml::DisposalDestinationType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterDataType,
      :schema_type => XSD::QName.new(nil, "wasteMeterDataType"),
      :schema_element => [
        ["wasteData", "PortfolioManager::Xml::WasteMeterEntryType[]", [0, 120]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DisposalDestinationType,
      :schema_type => XSD::QName.new(nil, "disposalDestinationType"),
      :schema_element => [
        ["landfillPercentage", "SOAP::SOAPDecimal", [0, 1]],
        ["incinerationPercentage", "SOAP::SOAPDecimal", [0, 1]],
        ["wasteToEnergyPercentage", "SOAP::SOAPDecimal", [0, 1]],
        ["unknownDestPercentage", "SOAP::SOAPDecimal", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BillboardMetricsType,
      :schema_type => XSD::QName.new(nil, "billboardMetricsType"),
      :schema_element => [
        ["metric", "PortfolioManager::Xml::BillboardMetricType[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BillboardMetricType,
      :schema_type => XSD::QName.new(nil, "billboardMetricType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType,
      :schema_type => XSD::QName.new(nil, "heyType"),
      :schema_element => [
        ["propertyInfo", "PortfolioManager::Xml::HeyType::PropertyInfo"],
        ["meter", "PortfolioManager::Xml::HeyType::Meter[]", [1, 10]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::PropertyInfo,
      :schema_name => XSD::QName.new(nil, "propertyInfo"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["postalCode", "SOAP::SOAPString"],
        ["numberOfOccupants", "SOAP::SOAPInt"],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::Meter::MeterData,
      :schema_name => XSD::QName.new(nil, "meterData"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["meterConsumption", "PortfolioManager::Xml::MeterConsumptionType[]", [1, 120]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::Meter,
      :schema_name => XSD::QName.new(nil, "meter"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["type", "PortfolioManager::Xml::AllEnergyMetersType"],
        ["unitOfMeasure", "PortfolioManager::Xml::DesignUnitOfMeasure"],
        ["meterData", "PortfolioManager::Xml::HeyType::Meter::MeterData"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics,
      :schema_type => XSD::QName.new(nil, "reportMetrics"),
      :schema_element => [
        ["group", "PortfolioManager::Xml::ReportMetrics::Group[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group::Metrics::Metric,
      :schema_name => XSD::QName.new(nil, "metric"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "description") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "uom") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group::Metrics,
      :schema_name => XSD::QName.new(nil, "metrics"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["metric", "PortfolioManager::Xml::ReportMetrics::Group::Metrics::Metric[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group,
      :schema_name => XSD::QName.new(nil, "group"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["metrics", "PortfolioManager::Xml::ReportMetrics::Group::Metrics"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportTemplateType,
      :schema_type => XSD::QName.new(nil, "reportTemplateType"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["name", "SOAP::SOAPString"],
        ["templateType", "SOAP::SOAPString", [0, 1]],
        ["metrics", "PortfolioManager::Xml::ReportTemplateType::Metrics", [0, 1]],
        ["reportId", "SOAP::SOAPLong", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportTemplateType::Metrics,
      :schema_name => XSD::QName.new(nil, "metrics"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Report,
      :schema_type => XSD::QName.new(nil, "report"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["type", "PortfolioManager::Xml::ReportType", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType"],
        ["templateId", "SOAP::SOAPLong", [0, 1]],
        ["templateName", "SOAP::SOAPString", [0, 1]],
        ["properties", "PortfolioManager::Xml::Report::Properties", [0, 1]],
        ["reportGenerationStatus", "PortfolioManager::Xml::ReportStatusType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Report::Properties,
      :schema_name => XSD::QName.new(nil, "properties"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType,
      :schema_type => XSD::QName.new(nil, "timeframeType"),
      :schema_element => [ :choice,
        ["currentPeriod", "PortfolioManager::Xml::TimeframeType::CurrentPeriod"],
        ["baselinePeriod", "PortfolioManager::Xml::TimeframeType::BaselinePeriod"],
        ["currentVsBaseline", "PortfolioManager::Xml::TimeframeType::CurrentVsBaseline"],
        ["singlePeriod", "PortfolioManager::Xml::TimeframeType::SinglePeriod"],
        ["compareCurrentPeriod", "PortfolioManager::Xml::TimeframeType::CompareCurrentPeriod"],
        ["compareBaselinePeriod", "PortfolioManager::Xml::TimeframeType::CompareBaselinePeriod"],
        ["twoPeriods", "PortfolioManager::Xml::TimeframeType::TwoPeriods"],
        ["dateRange", "PortfolioManager::Xml::TimeframeType::DateRange"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::CurrentPeriod,
      :schema_name => XSD::QName.new(nil, "currentPeriod"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["meterType", "PortfolioManager::Xml::MeterCategoryType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::BaselinePeriod,
      :schema_name => XSD::QName.new(nil, "baselinePeriod"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["meterType", "PortfolioManager::Xml::MeterCategoryType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::CurrentVsBaseline,
      :schema_name => XSD::QName.new(nil, "currentVsBaseline"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["meterType", "PortfolioManager::Xml::MeterCategoryType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::SinglePeriod,
      :schema_name => XSD::QName.new(nil, "singlePeriod"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["periodEndingDate", "PortfolioManager::Xml::Ped"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::CompareCurrentPeriod,
      :schema_name => XSD::QName.new(nil, "compareCurrentPeriod"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["meterType", "PortfolioManager::Xml::MeterCategoryType"],
        ["periodEndingDate", "PortfolioManager::Xml::Ped"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::CompareBaselinePeriod,
      :schema_name => XSD::QName.new(nil, "compareBaselinePeriod"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["meterType", "PortfolioManager::Xml::MeterCategoryType"],
        ["periodEndingDate", "PortfolioManager::Xml::Ped"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::TwoPeriods,
      :schema_name => XSD::QName.new(nil, "twoPeriods"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["periodEndingDateOne", "PortfolioManager::Xml::Ped"],
        ["periodEndingDateTwo", "PortfolioManager::Xml::Ped"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TimeframeType::DateRange,
      :schema_name => XSD::QName.new(nil, "dateRange"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["fromPeriodEndingDate", "PortfolioManager::Xml::Ped"],
        ["toPeriodEndingDate", "PortfolioManager::Xml::Ped"],
        ["interval", "PortfolioManager::Xml::ReportingIntervalType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Ped,
      :schema_type => XSD::QName.new(nil, "ped"),
      :schema_element => [
        ["month", "SOAP::SOAPNonNegativeInteger"],
        ["year", "SOAP::SOAPNonNegativeInteger"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportStatusDef,
      :schema_type => XSD::QName.new(nil, "reportStatusDef"),
      :schema_element => [
        ["status", "PortfolioManager::Xml::ReportStatusType"],
        ["description", "SOAP::SOAPString", [0, 1]],
        ["generationStartDate", "SOAP::SOAPDateTime", [0, 1]],
        ["generationEndDate", "SOAP::SOAPDateTime", [0, 1]],
        ["submittedDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataResponse,
      :schema_type => XSD::QName.new(nil, "dataResponse"),
      :schema_element => [
        ["dataRequestId", "SOAP::SOAPLong", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType", [0, 1]],
        ["properties", "PortfolioManager::Xml::DataResponse::Properties", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataResponse::Properties,
      :schema_name => XSD::QName.new(nil, "properties"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest,
      :schema_type => XSD::QName.new(nil, "dataRequest"),
      :schema_element => [
        ["name", "SOAP::SOAPString"],
        ["requesterDetails", "PortfolioManager::Xml::DataRequest::RequesterDetails"],
        ["instructions", "SOAP::SOAPString", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType", [0, 1]],
        ["locations", "PortfolioManager::Xml::DataRequest::Locations", [0, 1]],
        ["dataRequestStatus", "PortfolioManager::Xml::DataRequestStatusType"],
        ["dataRequestAcceptedBy", "SOAP::SOAPString", [0, 1]],
        ["dataRequestAcceptedDate", "SOAP::SOAPDateTime", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::RequesterDetails,
      :schema_name => XSD::QName.new(nil, "requesterDetails"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["firstName", "SOAP::SOAPString"],
        ["lastName", "SOAP::SOAPString"],
        ["email", "SOAP::SOAPString"],
        ["phone", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::Locations::Location,
      :schema_name => XSD::QName.new(nil, "location"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "country") => "SOAP::SOAPString",
        XSD::QName.new(nil, "state") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::Locations,
      :schema_name => XSD::QName.new(nil, "locations"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["location", "PortfolioManager::Xml::DataRequest::Locations::Location[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StatusType,
      :schema_type => XSD::QName.new(nil, "statusType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::PrimaryFunctionType,
      :schema_type => XSD::QName.new(nil, "primaryFunctionType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::OccupancyType,
      :schema_type => XSD::QName.new(nil, "OccupancyType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConstructionStatusType,
      :schema_type => XSD::QName.new(nil, "constructionStatusType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::CountryList,
      :schema_type => XSD::QName.new(nil, "countryList")
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaUnitsType,
      :schema_type => XSD::QName.new(nil, "grossFloorAreaUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::YesNo,
      :schema_type => XSD::QName.new(nil, "yesNo")
    )

    Registry.register(
      :class => PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyUnitsType,
      :schema_type => XSD::QName.new(nil, "amountOfLaundryProcessedAnnuallyUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::PlantDesignFlowRateUnitsType,
      :schema_type => XSD::QName.new(nil, "PlantDesignFlowRateUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUnitsType,
      :schema_type => XSD::QName.new(nil, "customUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::LengthUnitsType,
      :schema_type => XSD::QName.new(nil, "lengthUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::EmptyString,
      :schema_type => XSD::QName.new(nil, "emptyString")
    )

    Registry.register(
      :class => PortfolioManager::Xml::IrrigationAreaUnitsType,
      :schema_type => XSD::QName.new(nil, "irrigationAreaUnitsType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::AcceptRejectType,
      :schema_type => XSD::QName.new(nil, "acceptRejectType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ShareLevelType,
      :schema_type => XSD::QName.new(nil, "shareLevelType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::TypeOfMeter,
      :schema_type => XSD::QName.new(nil, "typeOfMeter")
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterType,
      :schema_type => XSD::QName.new(nil, "wasteMeterType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::PrimaryBusinessType,
      :schema_type => XSD::QName.new(nil, "primaryBusinessType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::TypeOfEnergyStarPartner,
      :schema_type => XSD::QName.new(nil, "typeOfEnergyStarPartner")
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataType,
      :schema_type => XSD::QName.new(nil, "dataType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::PeriodType,
      :schema_type => XSD::QName.new(nil, "periodType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::CategoryType,
      :schema_type => XSD::QName.new(nil, "categoryType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::TargetTypeScoreValuesType,
      :schema_type => XSD::QName.new(nil, "targetTypeScoreValuesType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::TargetTypePercentageValuesType,
      :schema_type => XSD::QName.new(nil, "targetTypePercentageValuesType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::AllEnergyMetersType,
      :schema_type => XSD::QName.new(nil, "allEnergyMetersType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignUnitOfMeasure,
      :schema_type => XSD::QName.new(nil, "designUnitOfMeasure")
    )

    Registry.register(
      :class => PortfolioManager::Xml::EmptyType,
      :schema_type => XSD::QName.new(nil, "emptyType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::TenantCommonAreaEnergyType,
      :schema_type => XSD::QName.new(nil, "tenantCommonAreaEnergyType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::SystemDeterminedString,
      :schema_type => XSD::QName.new(nil, "systemDeterminedString")
    )

    Registry.register(
      :class => PortfolioManager::Xml::CountryCode,
      :schema_type => XSD::QName.new(nil, "countryCode")
    )

    Registry.register(
      :class => PortfolioManager::Xml::StateCode,
      :schema_type => XSD::QName.new(nil, "stateCode")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportingIntervalType,
      :schema_type => XSD::QName.new(nil, "reportingIntervalType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportType,
      :schema_type => XSD::QName.new(nil, "reportType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportStatusType,
      :schema_type => XSD::QName.new(nil, "reportStatusType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequestStatusType,
      :schema_type => XSD::QName.new(nil, "dataRequestStatusType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterCategoryType,
      :schema_type => XSD::QName.new(nil, "meterCategoryType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResponseType,
      :schema_name => XSD::QName.new(nil, "response"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]],
        ["errors", "PortfolioManager::Xml::ErrorsType", [0, 1]],
        ["warnings", "PortfolioManager::Xml::WarningsType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "status") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::HierarchyType,
      :schema_name => XSD::QName.new(nil, "hierarchy"),
      :schema_element => [
        ["accountId", "SOAP::SOAPLong", [0, 1]],
        ["username", "SOAP::SOAPString", [0, 1]],
        ["propertyId", "SOAP::SOAPLong", [0, 1]],
        ["propertyUseId", "SOAP::SOAPLong", [0, 1]],
        ["useDetailId", "SOAP::SOAPLong", [0, 1]],
        ["meterId", "SOAP::SOAPLong", [0, 1]],
        ["consumptionDataId", "SOAP::SOAPLong", [0, 1]],
        ["wasteMeterDataId", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyType,
      :schema_name => XSD::QName.new(nil, "property"),
      :schema_element => [
        ["name", "SOAP::SOAPString", [0, 1]],
        ["constructionStatus", "PortfolioManager::Xml::ConstructionStatusType", [0, 1]],
        ["primaryFunction", "PortfolioManager::Xml::PrimaryFunctionType", [0, 1]],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType", [0, 1]],
        ["irrigatedArea", "PortfolioManager::Xml::IrrigationAreaType", [0, 1]],
        ["yearBuilt", "SOAP::SOAPInt", [0, 1]],
        ["address", "PortfolioManager::Xml::AddressType", [0, 1]],
        ["numberOfBuildings", "SOAP::SOAPInt", [0, 1]],
        ["isFederalProperty", "SOAP::SOAPBoolean"],
        ["federalOwner", "PortfolioManager::Xml::CountryList", [0, 1]],
        ["agency", "PortfolioManager::Xml::AgencyType", [0, 1]],
        ["agencyDepartmentRegion", "SOAP::SOAPString", [0, 1]],
        ["federalCampus", "SOAP::SOAPString", [0, 1]],
        ["occupancyPercentage", "PortfolioManager::Xml::OccupancyType"],
        ["notes", "SOAP::SOAPString", [0, 1]],
        ["isInstitutionalProperty", "SOAP::SOAPBoolean", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::LogType,
      :schema_name => XSD::QName.new(nil, "log"),
      :schema_element => [
        ["createdBy", "SOAP::SOAPString", [0, 1]],
        ["createdByAccountId", "SOAP::SOAPLong", [0, 1]],
        ["createdDate", "SOAP::SOAPDateTime", [0, 1]],
        ["lastUpdatedBy", "SOAP::SOAPString", [0, 1]],
        ["lastUpdatedByAccountId", "SOAP::SOAPLong", [0, 1]],
        ["lastUpdatedDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PendingListType,
      :schema_name => XSD::QName.new(nil, "pendingList"),
      :schema_element => [
        ["account", "PortfolioManager::Xml::PendingAccountsType[]", [0, nil]],
        ["property", "PortfolioManager::Xml::PendingPropertiesType[]", [0, nil]],
        ["meter", "PortfolioManager::Xml::PendingMetersType[]", [0, nil]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NotificationListType,
      :schema_name => XSD::QName.new(nil, "notificationList"),
      :schema_element => [
        ["notification", "PortfolioManager::Xml::NotificationType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SharingResponseType,
      :schema_name => XSD::QName.new(nil, "sharingResponse"),
      :schema_element => [
        ["action", "PortfolioManager::Xml::AcceptRejectType"],
        ["note", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TerminateShareResponseType,
      :schema_name => XSD::QName.new(nil, "terminateSharingResponse"),
      :schema_element => [
        ["note", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AccountInfo,
      :schema_name => XSD::QName.new(nil, "accountInfo"),
      :schema_element => [
        ["firstName", "SOAP::SOAPString"],
        ["lastName", "SOAP::SOAPString"],
        ["email", "SOAP::SOAPString"],
        ["address", "PortfolioManager::Xml::AddressType"],
        ["jobTitle", "SOAP::SOAPString"],
        ["phone", "SOAP::SOAPString"],
        ["organization", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterType,
      :schema_name => XSD::QName.new(nil, "meter"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["type", "PortfolioManager::Xml::TypeOfMeter"],
        ["name", "SOAP::SOAPString"],
        ["metered", "SOAP::SOAPBoolean", [0, 1]],
        ["unitOfMeasure", "SOAP::SOAPString"],
        ["firstBillDate", "SOAP::SOAPDate"],
        ["inUse", "SOAP::SOAPBoolean"],
        ["inactiveDate", "SOAP::SOAPDate", [0, 1]],
        ["otherDescription", "SOAP::SOAPString", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["aggregateMeter", "SOAP::SOAPBoolean", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::TypeOfWasteMeter,
      :schema_name => XSD::QName.new(nil, "wasteMeter"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["name", "SOAP::SOAPString"],
        ["type", "PortfolioManager::Xml::WasteMeterType"],
        ["unitOfMeasure", "SOAP::SOAPString"],
        ["dataEntryMethod", "SOAP::SOAPString"],
        ["containerSize", "SOAP::SOAPDecimal", [0, 1]],
        ["firstBillDate", "SOAP::SOAPDate", [0, 1]],
        ["inUse", "SOAP::SOAPBoolean"],
        ["inactiveDate", "SOAP::SOAPDate", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AccountType,
      :schema_name => XSD::QName.new(nil, "account"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["username", "SOAP::SOAPString"],
        ["password", "SOAP::SOAPString"],
        ["contact", "PortfolioManager::Xml::ContactType"],
        ["organization", "PortfolioManager::Xml::OrganizationType"],
        ["webserviceUser", "SOAP::SOAPBoolean"],
        ["searchable", "SOAP::SOAPBoolean"],
        ["includeTestPropertiesInGraphics", "SOAP::SOAPBoolean", [0, 1]],
        ["emailPreferenceCanadianAccount", "SOAP::SOAPBoolean", [0, 1]],
        ["billboardMetric", "SOAP::SOAPString", [0, 1]],
        ["languagePreference", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomField,
      :schema_name => XSD::QName.new(nil, "customField"),
      :schema_element => [
        ["minChars", "SOAP::SOAPInt", [0, 1]],
        ["maxChars", "SOAP::SOAPInt", [0, 1]],
        ["description", "SOAP::SOAPString", [0, 1]],
        ["example", "SOAP::SOAPString", [0, 1]],
        ["url", "SOAP::SOAPString", [0, 1]],
        ["displayOrder", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "required") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "validCharacters") => "SOAP::SOAPString",
        XSD::QName.new(nil, "whenToPrompt") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomFieldList,
      :schema_name => XSD::QName.new(nil, "customFieldList"),
      :schema_element => [
        ["customField", "PortfolioManager::Xml::CustomFieldList::CustomField[]"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomFieldList::CustomField,
      :schema_name => XSD::QName.new(nil, "customField"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::FederalAgencies,
      :schema_name => XSD::QName.new(nil, "federalAgencies"),
      :schema_element => [
        ["agency", "PortfolioManager::Xml::AgencyType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyMetricsType,
      :schema_name => XSD::QName.new(nil, "propertyMetrics"),
      :schema_element => [
        ["metric", "PortfolioManager::Xml::Metric[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "year") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "month") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "periodType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "propertyId") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyMetricsList,
      :schema_name => XSD::QName.new(nil, "propertyMetricsList"),
      :schema_element => [
        ["propertyMetrics", "PortfolioManager::Xml::PropertyMetricsType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EnergyPerformanceProjectType,
      :schema_name => XSD::QName.new(nil, "energyPerformanceProject"),
      :schema_element => [
        ["projectName", "SOAP::SOAPString", [0, 1]],
        ["projectDescription", "SOAP::SOAPString", [0, 1]],
        ["propertyId", "SOAP::SOAPLong", [0, 1]],
        ["propertyName", "SOAP::SOAPString", [0, 1]],
        ["implementationDate", "SOAP::SOAPDate", [0, 1]],
        ["category", "PortfolioManager::Xml::CategoryType", [0, 1]],
        ["categoryOtherDescription", "SOAP::SOAPString", [0, 1]],
        ["investmentCost", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedSavingsCost", "SOAP::SOAPDecimal", [0, 1]],
        ["evaluationPeriod", "PortfolioManager::Xml::EvaluationPeriodType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType,
      :schema_name => XSD::QName.new(nil, "targetFinder"),
      :schema_element => [
        ["propertyInfo", "PortfolioManager::Xml::PropertyDesignType"],
        ["propertyUses", "PortfolioManager::Xml::UnAuthDesignType::PropertyUses"],
        ["drinkingWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["wasteWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["itSiteEnergy", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedEnergyList", "PortfolioManager::Xml::UnAuthDesignType::EstimatedEnergyList", [0, 1]],
        ["target", "PortfolioManager::Xml::UnAuthDesignType::Target"],
        ["internationalWeatherStationId", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::PropertyUses,
      :schema_name => XSD::QName.new(nil, "propertyUses"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["prison", "PortfolioManager::Xml::OtherType[]"],
        ["refrigeratedWarehouse", "PortfolioManager::Xml::RefrigeratedWarehouseType[]"],
        ["retail", "PortfolioManager::Xml::RetailType[]"],
        ["hospital", "PortfolioManager::Xml::HospitalType[]"],
        ["medicalOffice", "PortfolioManager::Xml::MedicalOfficeType[]"],
        ["dataCenter", "PortfolioManager::Xml::DataCenterType[]"],
        ["courthouse", "PortfolioManager::Xml::CourthouseType[]"],
        ["singleFamilyHome", "PortfolioManager::Xml::SingleFamilyHomeType[]"],
        ["nonRefrigeratedWarehouse", "PortfolioManager::Xml::NonRefrigeratedWarehouseType[]"],
        ["multifamilyHousing", "PortfolioManager::Xml::MultifamilyHousingType[]"],
        ["office", "PortfolioManager::Xml::OfficeType[]"],
        ["wholesaleClubSupercenter", "PortfolioManager::Xml::WholesaleClubSupercenterType[]"],
        ["selfStorageFacility", "PortfolioManager::Xml::SelfStorageFacilityType[]"],
        ["seniorLivingCommunity", "PortfolioManager::Xml::SeniorLivingCommunityType[]"],
        ["residentialCareFacility", "PortfolioManager::Xml::ResidentialCareFacilityType[]"],
        ["swimmingPool", "PortfolioManager::Xml::SwimmingPoolType[]"],
        ["residenceHallDormitory", "PortfolioManager::Xml::ResidenceHallDormitoryType[]"],
        ["wastewaterTreatmentPlant", "PortfolioManager::Xml::WastewaterTreatmentPlantType[]"],
        ["distributionCenter", "PortfolioManager::Xml::DistributionCenterType[]"],
        ["worshipFacility", "PortfolioManager::Xml::WorshipFacilityType[]"],
        ["financialOffice", "PortfolioManager::Xml::FinancialOfficeType[]"],
        ["drinkingWaterTreatmentAndDistribution", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType[]"],
        ["parking", "PortfolioManager::Xml::ParkingType[]"],
        ["supermarket", "PortfolioManager::Xml::SupermarketType[]"],
        ["barracks", "PortfolioManager::Xml::BarracksType[]"],
        ["hotel", "PortfolioManager::Xml::HotelType[]"],
        ["k12School", "PortfolioManager::Xml::K12SchoolType[]"],
        ["bankBranch", "PortfolioManager::Xml::BankBranchType[]"],
        ["collegeUniversity", "PortfolioManager::Xml::CollegeUniversityType[]"],
        ["indoorArena", "PortfolioManager::Xml::IndoorArenaType[]"],
        ["otherStadium", "PortfolioManager::Xml::OtherStadiumType[]"],
        ["stadiumClosed", "PortfolioManager::Xml::StadiumClosedType[]"],
        ["stadiumOpen", "PortfolioManager::Xml::StadiumOpenType[]"],
        ["manufacturingIndustrialPlant", "PortfolioManager::Xml::OtherType[]"],
        ["ambulatorySurgicalCenter", "PortfolioManager::Xml::OtherType[]"],
        ["bowlingAlley", "PortfolioManager::Xml::OtherType[]"],
        ["otherPublicServices", "PortfolioManager::Xml::OtherType[]"],
        ["otherLodgingResidential", "PortfolioManager::Xml::OtherType[]"],
        ["casino", "PortfolioManager::Xml::OtherType[]"],
        ["personalServices", "PortfolioManager::Xml::OtherType[]"],
        ["mailingCenterPostOffice", "PortfolioManager::Xml::MailingCenterPostOfficeType[]"],
        ["library", "PortfolioManager::Xml::OtherType[]"],
        ["otherSpecialityHospital", "PortfolioManager::Xml::OtherType[]"],
        ["conventionCenter", "PortfolioManager::Xml::OtherType[]"],
        ["veterinaryOffice", "PortfolioManager::Xml::OtherType[]"],
        ["urgentCareClinicOtherOutpatient", "PortfolioManager::Xml::OtherType[]"],
        ["energyPowerStation", "PortfolioManager::Xml::OtherType[]"],
        ["otherServices", "PortfolioManager::Xml::OtherType[]"],
        ["barNightclub", "PortfolioManager::Xml::OtherType[]"],
        ["otherUtility", "PortfolioManager::Xml::OtherType[]"],
        ["zoo", "PortfolioManager::Xml::OtherType[]"],
        ["vehicleDealership", "PortfolioManager::Xml::VehicleDealershipType[]"],
        ["museum", "PortfolioManager::Xml::OtherType[]"],
        ["otherRecreation", "PortfolioManager::Xml::OtherType[]"],
        ["otherRestaurantBar", "PortfolioManager::Xml::OtherType[]"],
        ["lifestyleCenter", "PortfolioManager::Xml::OtherType[]"],
        ["policeStation", "PortfolioManager::Xml::OtherType[]"],
        ["preschoolDaycare", "PortfolioManager::Xml::OtherType[]"],
        ["raceTrack", "PortfolioManager::Xml::OtherType[]"],
        ["fastFoodRestaurant", "PortfolioManager::Xml::OtherType[]"],
        ["laboratory", "PortfolioManager::Xml::OtherType[]"],
        ["convenienceStoreWithoutGasStation", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType[]"],
        ["repairServices", "PortfolioManager::Xml::OtherType[]"],
        ["otherTechnologyScience", "PortfolioManager::Xml::OtherType[]"],
        ["fireStation", "PortfolioManager::Xml::OtherType[]"],
        ["foodSales", "PortfolioManager::Xml::FoodSalesType[]"],
        ["performingArts", "PortfolioManager::Xml::OtherType[]"],
        ["outpatientRehabilitationPhysicalTherapy", "PortfolioManager::Xml::OtherType[]"],
        ["stripMall", "PortfolioManager::Xml::OtherType[]"],
        ["rollerRink", "PortfolioManager::Xml::OtherType[]"],
        ["otherEducation", "PortfolioManager::Xml::OtherType[]"],
        ["fitnessCenterHealthClubGym", "PortfolioManager::Xml::OtherType[]"],
        ["aquarium", "PortfolioManager::Xml::OtherType[]"],
        ["foodService", "PortfolioManager::Xml::OtherType[]"],
        ["restaurant", "PortfolioManager::Xml::OtherType[]"],
        ["enclosedMall", "PortfolioManager::Xml::OtherType[]"],
        ["iceCurlingRink", "PortfolioManager::Xml::IceCurlingRinkType[]"],
        ["adultEducation", "PortfolioManager::Xml::OtherType[]"],
        ["otherEntertainmentPublicAssembly", "PortfolioManager::Xml::OtherType[]"],
        ["movieTheater", "PortfolioManager::Xml::OtherType[]"],
        ["transportationTerminalStation", "PortfolioManager::Xml::OtherType[]"],
        ["vocationalSchool", "PortfolioManager::Xml::OtherType[]"],
        ["socialMeetingHall", "PortfolioManager::Xml::OtherType[]"],
        ["otherMall", "PortfolioManager::Xml::OtherType[]"],
        ["convenienceStoreWithGasStation", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType[]"],
        ["other", "PortfolioManager::Xml::OtherType[]"],
        ["electricVehicleChargingStation", "PortfolioManager::Xml::EvChargingStationType[]"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::EstimatedEnergyList,
      :schema_name => XSD::QName.new(nil, "estimatedEnergyList"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["entries", "PortfolioManager::Xml::EstimatedEnergyListType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UnAuthDesignType::Target,
      :schema_name => XSD::QName.new(nil, "target"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["targetTypeScore", "PortfolioManager::Xml::TargetTypeScoreType"],
        ["targetTypePercentage", "PortfolioManager::Xml::TargetTypePercentageType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RefrigeratedWarehouseType,
      :schema_name => XSD::QName.new(nil, "refrigeratedWarehouse"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::RefrigeratedWarehouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RefrigeratedWarehouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType,
      :schema_name => XSD::QName.new(nil, "amountOfLaundryProcessedAnnually"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "averageEffluentBiologicalOxygenDemand"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "averageInfluentBiologicalOxygenDemand"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "averageNumberOfResidents"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ClearHeightUnitsType,
      :schema_name => XSD::QName.new(nil, "clearHeight"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaType,
      :schema_name => XSD::QName.new(nil, "completelyEnclosedFootage"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "cookingFacilities"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CoolingEquipmentRedundancyType,
      :schema_name => XSD::QName.new(nil, "coolingEquipmentRedundancy"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "estimatesApplied"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "exteriorEntranceToThePublic"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "fixedFilmTrickleFiltrationProcess"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "fullServiceSpaFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "areaOfAllWalkInRefrigerationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType,
      :schema_name => XSD::QName.new(nil, "lengthOfAllOpenClosedRefrigerationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "enclosedFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "grossFloorAreaUsedForFoodPreparation"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "grossFloorAreaHotelConferenceSpace"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "governmentSubsidizedHousing"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "gymCenterFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "hasComputerLab"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "hasDiningHall"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "hasLaboratory"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::HoursPerDayGuestsOnsiteType,
      :schema_name => XSD::QName.new(nil, "hoursPerDayGuestsOnsite"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "isHighSchool"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "isTertiaryCare"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "iceEvents"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfConcertShowEventsPerYear"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfSpecialOtherEventsPerYear"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfSportingEventsPerYear"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfSurgicalOperatingBeds"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "sizeOfElectronicScoreBoards"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "surgeryCenterFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ItEnergyConfigurationType,
      :schema_name => XSD::QName.new(nil, "itEnergyMeterConfiguration"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OnsiteLaundryType,
      :schema_name => XSD::QName.new(nil, "laundryFacility"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "maximumNumberOfFloors"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "maximumResidentCapacity"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "licensedBedCapacity"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MonthsInUseType,
      :schema_name => XSD::QName.new(nil, "monthsInUse"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfBedrooms"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfCashRegisters"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfCommercialRefrigerationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfCommercialWashingMachines"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfComputers"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialLivingUnitsLowRiseSetting"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfFTEWorkers"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfGuestMealsServedPerYear"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfLaundryHookupsInAllUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfLaundryHookupsInCommonArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfMriMachines"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfOpenClosedRefrigerationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfPeople"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialLiftSystems"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialLivingUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialWashingMachines"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfRooms"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfHotelRooms"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfStaffedBeds"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfSterilizationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfWalkInRefrigerationUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::NumberOfWeekdaysType,
      :schema_name => XSD::QName.new(nil, "numberOfWeekdaysOpen"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfWorkers"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "gymnasiumFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "studentSeatingCapacity"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "nutrientRemoval"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "onSiteLaundryFacility"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaType,
      :schema_name => XSD::QName.new(nil, "openFootage"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "openOnWeekends"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OwnedByType,
      :schema_name => XSD::QName.new(nil, "ownedBy"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaType,
      :schema_name => XSD::QName.new(nil, "partiallyEnclosedFootage"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentCooledType,
      :schema_name => XSD::QName.new(nil, "percentCooled"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "percentUsedForColdStorage"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentHeatedType,
      :schema_name => XSD::QName.new(nil, "percentHeated"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialLivingUnitsMidRiseSetting"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "percentOfGrossFloorAreaThatIsCommonSpaceOnly"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentOfficeCooledType,
      :schema_name => XSD::QName.new(nil, "percentOfficeCooled"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PercentOfficeHeatedType,
      :schema_name => XSD::QName.new(nil, "percentOfficeHeated"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PlantDesignFlowRateType,
      :schema_name => XSD::QName.new(nil, "plantDesignFlowRate"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PoolType,
      :schema_name => XSD::QName.new(nil, "poolLocation"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PoolSizeType,
      :schema_name => XSD::QName.new(nil, "poolSize"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfResidentialLivingUnitsHighRiseSetting"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentPopulationType,
      :schema_name => XSD::QName.new(nil, "residentPopulation"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseStringType,
      :schema_name => XSD::QName.new(nil, "schoolDistrict"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "seatingCapacity"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "singleStore"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::GrossFloorAreaType,
      :schema_name => XSD::QName.new(nil, "totalGrossFloorArea"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UpsSystemRedundancyType,
      :schema_name => XSD::QName.new(nil, "upsSystemRedundancy"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "supplementalHeating"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "weeklyOperatingHours"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "enrollment"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "grantDollars"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfIndoorIceRinks"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::OptionalFloorAreaType,
      :schema_name => XSD::QName.new(nil, "totalIceRinkSurfaceAreaForAllRinks"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType,
      :schema_name => XSD::QName.new(nil, "numberOfWeeklyIceResurfacingForAllRinks"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfCurlingSheets"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "spectatorSeatingCapacity"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MonthsInUseType,
      :schema_name => XSD::QName.new(nil, "monthsMainIndoorIceRinkInUse"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "commonEntrance"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfCookingEquipmentUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfWarmingHeatingEquipmentUnits"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfLevelOneEvChargingStations"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfLevelTwoEvChargingStations"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "numberOfDcFastEvChargingStations"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CeilingHeightUnitsType,
      :schema_name => XSD::QName.new(nil, "ceilingHeight"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDecimalType,
      :schema_name => XSD::QName.new(nil, "averageNumberOfVehiclesInInventory"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPDecimal", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseYesNoType,
      :schema_name => XSD::QName.new(nil, "deliveryFacility"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "PortfolioManager::Xml::YesNo", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseIntegerType,
      :schema_name => XSD::QName.new(nil, "numberOfLettersPackagesPerYear"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPInt", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseDetailsType,
      :schema_name => XSD::QName.new(nil, "customUseDetail1"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]],
        ["customName", "SOAP::SOAPString", [0, 1]],
        ["customUom", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseDetailsType,
      :schema_name => XSD::QName.new(nil, "customUseDetail2"),
      :schema_element => [
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]],
        ["customName", "SOAP::SOAPString", [0, 1]],
        ["customUom", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "currentAsOf") => "SOAP::SOAPDate",
        XSD::QName.new(nil, "temporary") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "default") => "SOAP::SOAPString",
        XSD::QName.new(nil, "units") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyUse,
      :schema_name => XSD::QName.new(nil, "propertyUse"),
      :schema_element => [
        ["name", nil]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RetailType,
      :schema_name => XSD::QName.new(nil, "retail"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::RetailType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::RetailType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["singleStore", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["exteriorEntranceToThePublic", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HospitalType,
      :schema_name => XSD::QName.new(nil, "hospital"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::HospitalType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HospitalType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfStaffedBeds", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfMriMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfSterilizationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["onSiteLaundryFacility", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasLaboratory", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["isTertiaryCare", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["maximumNumberOfFloors", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["ownedBy", "PortfolioManager::Xml::OwnedByType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MedicalOfficeType,
      :schema_name => XSD::QName.new(nil, "medicalOffice"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MedicalOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MedicalOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfSurgicalOperatingBeds", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["surgeryCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfMriMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataCenterType,
      :schema_name => XSD::QName.new(nil, "dataCenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DataCenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataCenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["estimatesApplied", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["coolingEquipmentRedundancy", "PortfolioManager::Xml::CoolingEquipmentRedundancyType", [0, 1]],
        ["itEnergyMeterConfiguration", "PortfolioManager::Xml::ItEnergyConfigurationType", [0, 1]],
        ["upsSystemRedundancy", "PortfolioManager::Xml::UpsSystemRedundancyType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CourthouseType,
      :schema_name => XSD::QName.new(nil, "courthouse"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CourthouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CourthouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SingleFamilyHomeType,
      :schema_name => XSD::QName.new(nil, "singleFamilyHome"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SingleFamilyHomeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SingleFamilyHomeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfBedrooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfPeople", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NonRefrigeratedWarehouseType,
      :schema_name => XSD::QName.new(nil, "nonRefrigeratedWarehouse"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::NonRefrigeratedWarehouseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::NonRefrigeratedWarehouseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MultifamilyHousingType,
      :schema_name => XSD::QName.new(nil, "multifamilyHousing"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MultifamilyHousingType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MultifamilyHousingType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfBedrooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLivingUnitsMidRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLaundryHookupsInAllUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfLaundryHookupsInCommonArea", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfResidentialLivingUnitsLowRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["numberOfResidentialLivingUnitsHighRiseSetting", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["residentPopulation", "PortfolioManager::Xml::ResidentPopulationType", [0, 1]],
        ["governmentSubsidizedHousing", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["commonEntrance", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OfficeType,
      :schema_name => XSD::QName.new(nil, "office"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WholesaleClubSupercenterType,
      :schema_name => XSD::QName.new(nil, "wholesaleClubSupercenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WholesaleClubSupercenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WholesaleClubSupercenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["exteriorEntranceToThePublic", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["singleStore", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SeniorLivingCommunityType,
      :schema_name => XSD::QName.new(nil, "seniorLivingCommunity"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SeniorLivingCommunityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SeniorLivingCommunityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfResidents", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["maximumResidentCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLiftSystems", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentialCareFacilityType,
      :schema_name => XSD::QName.new(nil, "residentialCareFacility"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ResidentialCareFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidentialCareFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfResidents", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["maximumResidentCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialWashingMachines", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfResidentialLiftSystems", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SwimmingPoolType,
      :schema_name => XSD::QName.new(nil, "swimmingPool"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SwimmingPoolType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SwimmingPoolType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["poolSize", "PortfolioManager::Xml::PoolSizeType"],
        ["poolLocation", "PortfolioManager::Xml::PoolType", [0, 1]],
        ["monthsInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidenceHallDormitoryType,
      :schema_name => XSD::QName.new(nil, "residenceHallDormitory"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ResidenceHallDormitoryType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResidenceHallDormitoryType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["hasComputerLab", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasDiningHall", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WastewaterTreatmentPlantType,
      :schema_name => XSD::QName.new(nil, "wastewaterTreatmentPlant"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WastewaterTreatmentPlantType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WastewaterTreatmentPlantType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["averageInfluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageEffluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["plantDesignFlowRate", "PortfolioManager::Xml::PlantDesignFlowRateType"],
        ["fixedFilmTrickleFiltrationProcess", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["nutrientRemoval", "PortfolioManager::Xml::UseYesNoType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DistributionCenterType,
      :schema_name => XSD::QName.new(nil, "distributionCenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DistributionCenterType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DistributionCenterType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WorshipFacilityType,
      :schema_name => XSD::QName.new(nil, "worshipFacility"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::WorshipFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WorshipFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["seatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["ceilingHeight", "PortfolioManager::Xml::CeilingHeightUnitsType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfWeekdaysOpen", "PortfolioManager::Xml::NumberOfWeekdaysType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FinancialOfficeType,
      :schema_name => XSD::QName.new(nil, "financialOffice"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::FinancialOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FinancialOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType,
      :schema_name => XSD::QName.new(nil, "drinkingWaterTreatmentAndDistribution"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ParkingType,
      :schema_name => XSD::QName.new(nil, "parking"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ParkingType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ParkingType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["supplementalHeating", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["openFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["completelyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["partiallyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SupermarketType,
      :schema_name => XSD::QName.new(nil, "supermarket"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SupermarketType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SupermarketType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FoodSalesType,
      :schema_name => XSD::QName.new(nil, "foodSales"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::FoodSalesType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::FoodSalesType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithGasStationType,
      :schema_name => XSD::QName.new(nil, "convenienceStoreWithGasStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithGasStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCookingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWarmingHeatingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType,
      :schema_name => XSD::QName.new(nil, "convenienceStoreWithoutGasStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCookingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWarmingHeatingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BarracksType,
      :schema_name => XSD::QName.new(nil, "barracks"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::BarracksType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BarracksType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["hasComputerLab", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["hasDiningHall", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HotelType,
      :schema_name => XSD::QName.new(nil, "hotel"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::HotelType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HotelType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["fullServiceSpaFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["gymCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["hoursPerDayGuestsOnsite", "PortfolioManager::Xml::HoursPerDayGuestsOnsiteType", [0, 1]],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfGuestMealsServedPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfHotelRooms", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["laundryFacility", "PortfolioManager::Xml::OnsiteLaundryType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["amountOfLaundryProcessedAnnually", "PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["grossFloorAreaHotelConferenceSpace", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::K12SchoolType,
      :schema_name => XSD::QName.new(nil, "k12School"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::K12SchoolType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::K12SchoolType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["openOnWeekends", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["isHighSchool", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["monthsInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]],
        ["schoolDistrict", "PortfolioManager::Xml::UseStringType", [0, 1]],
        ["studentSeatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["gymnasiumFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BankBranchType,
      :schema_name => XSD::QName.new(nil, "bankBranch"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::BankBranchType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BankBranchType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType", [0, 1]],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CollegeUniversityType,
      :schema_name => XSD::QName.new(nil, "collegeUniversity"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CollegeUniversityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CollegeUniversityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["enrollment", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["grantDollars", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IndoorArenaType,
      :schema_name => XSD::QName.new(nil, "indoorArena"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::IndoorArenaType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IndoorArenaType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherStadiumType,
      :schema_name => XSD::QName.new(nil, "otherStadium"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherStadiumType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherStadiumType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumClosedType,
      :schema_name => XSD::QName.new(nil, "stadiumClosed"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::StadiumClosedType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumClosedType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumOpenType,
      :schema_name => XSD::QName.new(nil, "stadiumOpen"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::StadiumOpenType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::StadiumOpenType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IceCurlingRinkType,
      :schema_name => XSD::QName.new(nil, "iceCurlingRink"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::IceCurlingRinkType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IceCurlingRinkType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfIndoorIceRinks", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["totalIceRinkSurfaceAreaForAllRinks", "PortfolioManager::Xml::OptionalFloorAreaType", [0, 1]],
        ["monthsMainIndoorIceRinkInUse", "PortfolioManager::Xml::MonthsInUseType", [0, 1]],
        ["numberOfWeeklyIceResurfacingForAllRinks", "PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType", [0, 1]],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfCurlingSheets", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["spectatorSeatingCapacity", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SelfStorageFacilityType,
      :schema_name => XSD::QName.new(nil, "selfStorageFacility"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::SelfStorageFacilityType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SelfStorageFacilityType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "prison"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "manufacturingIndustrialPlant"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "ambulatorySurgicalCenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "bowlingAlley"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherPublicServices"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherLodgingResidential"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "casino"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "personalServices"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "library"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherSpecialityHospital"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "conventionCenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "veterinaryOffice"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "urgentCareClinicOtherOutpatient"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "energyPowerStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherServices"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "barNightclub"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherUtility"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "zoo"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "museum"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherRecreation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherRestaurantBar"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "lifestyleCenter"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "policeStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "preschoolDaycare"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "raceTrack"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "fastFoodRestaurant"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "laboratory"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "repairServices"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherTechnologyScience"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "fireStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "performingArts"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "outpatientRehabilitationPhysicalTherapy"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "stripMall"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "rollerRink"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherEducation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "fitnessCenterHealthClubGym"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "aquarium"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "foodService"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "restaurant"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "enclosedMall"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "adultEducation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherEntertainmentPublicAssembly"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "movieTheater"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "transportationTerminalStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "vocationalSchool"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "socialMeetingHall"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "otherMall"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType,
      :schema_name => XSD::QName.new(nil, "other"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::OtherType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::OtherType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EvChargingStationType,
      :schema_name => XSD::QName.new(nil, "electricVehicleChargingStation"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::EvChargingStationType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EvChargingStationType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["numberOfLevelOneEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLevelTwoEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfDcFastEvChargingStations", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::VehicleDealershipType,
      :schema_name => XSD::QName.new(nil, "vehicleDealership"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::VehicleDealershipType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::VehicleDealershipType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["averageNumberOfVehiclesInInventory", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MailingCenterPostOfficeType,
      :schema_name => XSD::QName.new(nil, "mailingCenterPostOffice"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::MailingCenterPostOfficeType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MailingCenterPostOfficeType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType", [0, 1]],
        ["numberOfLettersPackagesPerYear", "PortfolioManager::Xml::UseIntegerType", [0, 1]],
        ["deliveryFacility", "PortfolioManager::Xml::UseYesNoType", [0, 1]],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType", [0, 1]],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseType,
      :schema_name => XSD::QName.new(nil, "customUse"),
      :schema_element => [
        ["name", nil],
        ["useDetails", "PortfolioManager::Xml::CustomUseType::UseDetails"],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::CustomUseType::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["customUseDetail1", "PortfolioManager::Xml::CustomUseDetailsType", [0, 1]],
        ["customUseDetail2", "PortfolioManager::Xml::CustomUseDetailsType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType,
      :schema_name => XSD::QName.new(nil, "design"),
      :schema_element => [
        ["propertyUses", "PortfolioManager::Xml::DesignBaseType::PropertyUses"],
        ["drinkingWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["wasteWaterInfluentFlow", "SOAP::SOAPDecimal", [0, 1]],
        ["itSiteEnergy", "SOAP::SOAPDecimal", [0, 1]],
        ["estimatedEnergyList", "PortfolioManager::Xml::DesignBaseType::EstimatedEnergyList", [0, 1]],
        ["target", "PortfolioManager::Xml::DesignBaseType::Target"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::PropertyUses,
      :schema_name => XSD::QName.new(nil, "propertyUses"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        [
          ["prison", "PortfolioManager::Xml::OtherType[]"],
          ["refrigeratedWarehouse", "PortfolioManager::Xml::RefrigeratedWarehouseType[]"],
          ["retail", "PortfolioManager::Xml::RetailType[]"],
          ["hospital", "PortfolioManager::Xml::HospitalType[]"],
          ["medicalOffice", "PortfolioManager::Xml::MedicalOfficeType[]"],
          ["dataCenter", "PortfolioManager::Xml::DataCenterType[]"],
          ["courthouse", "PortfolioManager::Xml::CourthouseType[]"],
          ["singleFamilyHome", "PortfolioManager::Xml::SingleFamilyHomeType[]"],
          ["nonRefrigeratedWarehouse", "PortfolioManager::Xml::NonRefrigeratedWarehouseType[]"],
          ["multifamilyHousing", "PortfolioManager::Xml::MultifamilyHousingType[]"],
          ["office", "PortfolioManager::Xml::OfficeType[]"],
          ["wholesaleClubSupercenter", "PortfolioManager::Xml::WholesaleClubSupercenterType[]"],
          ["selfStorageFacility", "PortfolioManager::Xml::SelfStorageFacilityType[]"],
          ["seniorLivingCommunity", "PortfolioManager::Xml::SeniorLivingCommunityType[]"],
          ["residentialCareFacility", "PortfolioManager::Xml::ResidentialCareFacilityType[]"],
          ["swimmingPool", "PortfolioManager::Xml::SwimmingPoolType[]"],
          ["residenceHallDormitory", "PortfolioManager::Xml::ResidenceHallDormitoryType[]"],
          ["wastewaterTreatmentPlant", "PortfolioManager::Xml::WastewaterTreatmentPlantType[]"],
          ["distributionCenter", "PortfolioManager::Xml::DistributionCenterType[]"],
          ["worshipFacility", "PortfolioManager::Xml::WorshipFacilityType[]"],
          ["financialOffice", "PortfolioManager::Xml::FinancialOfficeType[]"],
          ["drinkingWaterTreatmentAndDistribution", "PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType[]"],
          ["parking", "PortfolioManager::Xml::ParkingType[]"],
          ["supermarket", "PortfolioManager::Xml::SupermarketType[]"],
          ["barracks", "PortfolioManager::Xml::BarracksType[]"],
          ["hotel", "PortfolioManager::Xml::HotelType[]"],
          ["k12School", "PortfolioManager::Xml::K12SchoolType[]"],
          ["bankBranch", "PortfolioManager::Xml::BankBranchType[]"],
          ["collegeUniversity", "PortfolioManager::Xml::CollegeUniversityType[]"],
          ["indoorArena", "PortfolioManager::Xml::IndoorArenaType[]"],
          ["otherStadium", "PortfolioManager::Xml::OtherStadiumType[]"],
          ["stadiumClosed", "PortfolioManager::Xml::StadiumClosedType[]"],
          ["stadiumOpen", "PortfolioManager::Xml::StadiumOpenType[]"],
          ["manufacturingIndustrialPlant", "PortfolioManager::Xml::OtherType[]"],
          ["ambulatorySurgicalCenter", "PortfolioManager::Xml::OtherType[]"],
          ["bowlingAlley", "PortfolioManager::Xml::OtherType[]"],
          ["otherPublicServices", "PortfolioManager::Xml::OtherType[]"],
          ["otherLodgingResidential", "PortfolioManager::Xml::OtherType[]"],
          ["casino", "PortfolioManager::Xml::OtherType[]"],
          ["personalServices", "PortfolioManager::Xml::OtherType[]"],
          ["mailingCenterPostOffice", "PortfolioManager::Xml::MailingCenterPostOfficeType[]"],
          ["library", "PortfolioManager::Xml::OtherType[]"],
          ["otherSpecialityHospital", "PortfolioManager::Xml::OtherType[]"],
          ["conventionCenter", "PortfolioManager::Xml::OtherType[]"],
          ["veterinaryOffice", "PortfolioManager::Xml::OtherType[]"],
          ["urgentCareClinicOtherOutpatient", "PortfolioManager::Xml::OtherType[]"],
          ["energyPowerStation", "PortfolioManager::Xml::OtherType[]"],
          ["otherServices", "PortfolioManager::Xml::OtherType[]"],
          ["barNightclub", "PortfolioManager::Xml::OtherType[]"],
          ["otherUtility", "PortfolioManager::Xml::OtherType[]"],
          ["zoo", "PortfolioManager::Xml::OtherType[]"],
          ["vehicleDealership", "PortfolioManager::Xml::VehicleDealershipType[]"],
          ["museum", "PortfolioManager::Xml::OtherType[]"],
          ["otherRecreation", "PortfolioManager::Xml::OtherType[]"],
          ["otherRestaurantBar", "PortfolioManager::Xml::OtherType[]"],
          ["lifestyleCenter", "PortfolioManager::Xml::OtherType[]"],
          ["policeStation", "PortfolioManager::Xml::OtherType[]"],
          ["preschoolDaycare", "PortfolioManager::Xml::OtherType[]"],
          ["raceTrack", "PortfolioManager::Xml::OtherType[]"],
          ["fastFoodRestaurant", "PortfolioManager::Xml::OtherType[]"],
          ["laboratory", "PortfolioManager::Xml::OtherType[]"],
          ["convenienceStoreWithoutGasStation", "PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType[]"],
          ["repairServices", "PortfolioManager::Xml::OtherType[]"],
          ["otherTechnologyScience", "PortfolioManager::Xml::OtherType[]"],
          ["fireStation", "PortfolioManager::Xml::OtherType[]"],
          ["foodSales", "PortfolioManager::Xml::FoodSalesType[]"],
          ["performingArts", "PortfolioManager::Xml::OtherType[]"],
          ["outpatientRehabilitationPhysicalTherapy", "PortfolioManager::Xml::OtherType[]"],
          ["stripMall", "PortfolioManager::Xml::OtherType[]"],
          ["rollerRink", "PortfolioManager::Xml::OtherType[]"],
          ["otherEducation", "PortfolioManager::Xml::OtherType[]"],
          ["fitnessCenterHealthClubGym", "PortfolioManager::Xml::OtherType[]"],
          ["aquarium", "PortfolioManager::Xml::OtherType[]"],
          ["foodService", "PortfolioManager::Xml::OtherType[]"],
          ["restaurant", "PortfolioManager::Xml::OtherType[]"],
          ["enclosedMall", "PortfolioManager::Xml::OtherType[]"],
          ["iceCurlingRink", "PortfolioManager::Xml::IceCurlingRinkType[]"],
          ["adultEducation", "PortfolioManager::Xml::OtherType[]"],
          ["otherEntertainmentPublicAssembly", "PortfolioManager::Xml::OtherType[]"],
          ["movieTheater", "PortfolioManager::Xml::OtherType[]"],
          ["transportationTerminalStation", "PortfolioManager::Xml::OtherType[]"],
          ["vocationalSchool", "PortfolioManager::Xml::OtherType[]"],
          ["socialMeetingHall", "PortfolioManager::Xml::OtherType[]"],
          ["otherMall", "PortfolioManager::Xml::OtherType[]"],
          ["convenienceStoreWithGasStation", "PortfolioManager::Xml::ConvenienceStoreWithGasStationType[]"],
          ["other", "PortfolioManager::Xml::OtherType[]"],
          ["electricVehicleChargingStation", "PortfolioManager::Xml::EvChargingStationType[]"]
        ]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::EstimatedEnergyList,
      :schema_name => XSD::QName.new(nil, "estimatedEnergyList"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["entries", "PortfolioManager::Xml::EstimatedEnergyListType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DesignBaseType::Target,
      :schema_name => XSD::QName.new(nil, "target"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [ :choice,
        ["targetTypeScore", "PortfolioManager::Xml::TargetTypeScoreType"],
        ["targetTypePercentage", "PortfolioManager::Xml::TargetTypePercentageType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyType,
      :schema_name => XSD::QName.new(nil, "building"),
      :schema_element => [
        ["name", "SOAP::SOAPString", [0, 1]],
        ["constructionStatus", "PortfolioManager::Xml::ConstructionStatusType", [0, 1]],
        ["primaryFunction", "PortfolioManager::Xml::PrimaryFunctionType", [0, 1]],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType", [0, 1]],
        ["irrigatedArea", "PortfolioManager::Xml::IrrigationAreaType", [0, 1]],
        ["yearBuilt", "SOAP::SOAPInt", [0, 1]],
        ["address", "PortfolioManager::Xml::AddressType", [0, 1]],
        ["numberOfBuildings", "SOAP::SOAPInt", [0, 1]],
        ["isFederalProperty", "SOAP::SOAPBoolean"],
        ["federalOwner", "PortfolioManager::Xml::CountryList", [0, 1]],
        ["agency", "PortfolioManager::Xml::AgencyType", [0, 1]],
        ["agencyDepartmentRegion", "SOAP::SOAPString", [0, 1]],
        ["federalCampus", "SOAP::SOAPString", [0, 1]],
        ["occupancyPercentage", "PortfolioManager::Xml::OccupancyType"],
        ["notes", "SOAP::SOAPString", [0, 1]],
        ["isInstitutionalProperty", "SOAP::SOAPBoolean", [0, 1]],
        ["accessLevel", "PortfolioManager::Xml::ShareLevelType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterDataType,
      :schema_name => XSD::QName.new(nil, "meterData"),
      :schema_element => [
        ["meterConsumption", "PortfolioManager::Xml::MeterConsumptionType[]", [0, 120]],
        ["meterDelivery", "PortfolioManager::Xml::MeterDeliveryType[]", [0, 120]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterConsumptionType,
      :schema_name => XSD::QName.new(nil, "meterConsumption"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["startDate", "SOAP::SOAPDate"],
        ["endDate", "SOAP::SOAPDate"],
        ["usage", "SOAP::SOAPDecimal"],
        ["cost", nil, [0, 1]],
        ["energyExportedOffSite", "SOAP::SOAPDecimal", [0, 1]],
        ["greenPower", "PortfolioManager::Xml::GreenPowerType", [0, 1]],
        ["rECOwnership", ["SOAP::SOAPString", XSD::QName.new(nil, "RECOwnership")], [0, 1]],
        ["demandTracking", "PortfolioManager::Xml::DemandTrackingType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "isGreenPower") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterDeliveryType,
      :schema_name => XSD::QName.new(nil, "meterDelivery"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["deliveryDate", "SOAP::SOAPDate"],
        ["quantity", "SOAP::SOAPDecimal"],
        ["cost", nil, [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::Customer,
      :schema_name => XSD::QName.new(nil, "customer"),
      :schema_element => [
        ["username", "SOAP::SOAPString", [0, 1]],
        ["includeTestPropertiesInGraphics", "SOAP::SOAPBoolean", [0, 1]],
        ["emailPreferenceCanadianAccount", "SOAP::SOAPBoolean", [0, 1]],
        ["billboardMetric", "SOAP::SOAPString", [0, 1]],
        ["languagePreference", "SOAP::SOAPString", [0, 1]],
        ["accountInfo", "PortfolioManager::Xml::AccountInfo", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataExchangeSettings,
      :schema_name => XSD::QName.new(nil, "dataExchangeSettings"),
      :schema_element => [
        ["supportedMeterTypes", "PortfolioManager::Xml::DataExchangeSettings::SupportedMeterTypes", [0, 1]],
        ["termsOfUse", "PortfolioManager::Xml::DataExchangeSettings::TermsOfUse", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataExchangeSettings::SupportedMeterTypes,
      :schema_name => XSD::QName.new(nil, "supportedMeterTypes"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["meterType", "[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataExchangeSettings::TermsOfUse,
      :schema_name => XSD::QName.new(nil, "termsOfUse"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [ :choice,
        ["none", "PortfolioManager::Xml::EmptyType"],
        ["text", "SOAP::SOAPString"],
        ["url", "SOAP::SOAPAnyURI"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::UseDetails,
      :schema_name => XSD::QName.new(nil, "useDetails"),
      :schema_element => [
        ["amountOfLaundryProcessedAnnually", "PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType"],
        ["averageEffluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType"],
        ["averageInfluentBiologicalOxygenDemand", "PortfolioManager::Xml::UseDecimalType"],
        ["averageNumberOfResidents", "PortfolioManager::Xml::UseDecimalType"],
        ["completelyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["cookingFacilities", "PortfolioManager::Xml::UseYesNoType"],
        ["coolingEquipmentRedundancy", "PortfolioManager::Xml::CoolingEquipmentRedundancyType"],
        ["enclosedFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["enrollment", "PortfolioManager::Xml::UseDecimalType"],
        ["exteriorEntranceToThePublic", "PortfolioManager::Xml::UseYesNoType"],
        ["fixedFilmTrickleFiltrationProcess", "PortfolioManager::Xml::UseYesNoType"],
        ["fullServiceSpaFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["areaOfAllWalkInRefrigerationUnits", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["lengthOfAllOpenClosedRefrigerationUnits", "PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType"],
        ["governmentSubsidizedHousing", "PortfolioManager::Xml::UseYesNoType"],
        ["grantDollars", "PortfolioManager::Xml::UseDecimalType"],
        ["gymCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["gymnasiumFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["hasComputerLab", "PortfolioManager::Xml::UseYesNoType"],
        ["hasDiningHall", "PortfolioManager::Xml::UseYesNoType"],
        ["hasLaboratory", "PortfolioManager::Xml::UseYesNoType"],
        ["hoursPerDayGuestsOnsite", "PortfolioManager::Xml::HoursPerDayGuestsOnsiteType"],
        ["iceEvents", "PortfolioManager::Xml::UseYesNoType"],
        ["isHighSchool", "PortfolioManager::Xml::UseYesNoType"],
        ["isTertiaryCare", "PortfolioManager::Xml::UseYesNoType"],
        ["itEnergyMeterConfiguration", "PortfolioManager::Xml::ItEnergyConfigurationType"],
        ["laundryFacility", "PortfolioManager::Xml::OnsiteLaundryType"],
        ["maximumNumberOfFloors", "PortfolioManager::Xml::UseIntegerType"],
        ["maximumResidentCapacity", "PortfolioManager::Xml::UseDecimalType"],
        ["licensedBedCapacity", "PortfolioManager::Xml::UseDecimalType"],
        ["monthsInUse", "PortfolioManager::Xml::MonthsInUseType"],
        ["monthsMainIndoorIceRinkInUse", "PortfolioManager::Xml::MonthsInUseType"],
        ["numberOfBedrooms", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfCashRegisters", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfCommercialRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfCommercialWashingMachines", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfComputers", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfConcertShowEventsPerYear", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfResidentialLivingUnitsLowRiseSetting", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfFTEWorkers", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfGuestMealsServedPerYear", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfLaundryHookupsInAllUnits", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfLaundryHookupsInCommonArea", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfMriMachines", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfOpenClosedRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfPeople", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfResidentialLiftSystems", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfResidentialLivingUnits", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfResidentialWashingMachines", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfRooms", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfHotelRooms", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfSpecialOtherEventsPerYear", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfSportingEventsPerYear", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfStaffedBeds", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfSurgicalOperatingBeds", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfWalkInRefrigerationUnits", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfWeekdaysOpen", "PortfolioManager::Xml::NumberOfWeekdaysType"],
        ["numberOfWorkers", "PortfolioManager::Xml::UseDecimalType"],
        ["numberOfIndoorIceRinks", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfWeeklyIceResurfacingForAllRinks", "PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType"],
        ["numberOfCurlingSheets", "PortfolioManager::Xml::UseIntegerType"],
        ["nutrientRemoval", "PortfolioManager::Xml::UseYesNoType"],
        ["onSiteLaundryFacility", "PortfolioManager::Xml::UseYesNoType"],
        ["openFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["openOnWeekends", "PortfolioManager::Xml::UseYesNoType"],
        ["ownedBy", "PortfolioManager::Xml::OwnedByType"],
        ["partiallyEnclosedFootage", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["percentCooled", "PortfolioManager::Xml::PercentCooledType"],
        ["percentHeated", "PortfolioManager::Xml::PercentHeatedType"],
        ["numberOfResidentialLivingUnitsMidRiseSetting", "PortfolioManager::Xml::UseDecimalType"],
        ["percentOfGrossFloorAreaThatIsCommonSpaceOnly", "PortfolioManager::Xml::UseDecimalType"],
        ["percentOfficeCooled", "PortfolioManager::Xml::PercentOfficeCooledType"],
        ["percentOfficeHeated", "PortfolioManager::Xml::PercentOfficeHeatedType"],
        ["totalIceRinkSurfaceAreaForAllRinks", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["plantDesignFlowRate", "PortfolioManager::Xml::PlantDesignFlowRateType"],
        ["poolLocation", "PortfolioManager::Xml::PoolType"],
        ["poolSize", "PortfolioManager::Xml::PoolSizeType"],
        ["numberOfResidentialLivingUnitsHighRiseSetting", "PortfolioManager::Xml::UseDecimalType"],
        ["residentPopulation", "PortfolioManager::Xml::ResidentPopulationType"],
        ["schoolDistrict", "PortfolioManager::Xml::UseStringType"],
        ["seatingCapacity", "PortfolioManager::Xml::UseDecimalType"],
        ["singleStore", "PortfolioManager::Xml::UseYesNoType"],
        ["totalGrossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"],
        ["estimatesApplied", "PortfolioManager::Xml::UseYesNoType"],
        ["upsSystemRedundancy", "PortfolioManager::Xml::UpsSystemRedundancyType"],
        ["sizeOfElectronicScoreBoards", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["spectatorSeatingCapacity", "PortfolioManager::Xml::UseDecimalType"],
        ["supplementalHeating", "PortfolioManager::Xml::UseYesNoType"],
        ["studentSeatingCapacity", "PortfolioManager::Xml::UseDecimalType"],
        ["surgeryCenterFloorArea", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["weeklyOperatingHours", "PortfolioManager::Xml::UseDecimalType"],
        ["percentUsedForColdStorage", "PortfolioManager::Xml::UseIntegerType"],
        ["grossFloorAreaUsedForFoodPreparation", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["grossFloorAreaHotelConferenceSpace", "PortfolioManager::Xml::OptionalFloorAreaType"],
        ["clearHeight", "PortfolioManager::Xml::ClearHeightUnitsType"],
        ["numberOfSterilizationUnits", "PortfolioManager::Xml::UseDecimalType"],
        ["commonEntrance", "PortfolioManager::Xml::UseYesNoType"],
        ["numberOfCookingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType"],
        ["numberOfWarmingHeatingEquipmentUnits", "PortfolioManager::Xml::UseIntegerType"],
        ["ceilingHeight", "PortfolioManager::Xml::CeilingHeightUnitsType"],
        ["averageNumberOfVehiclesInInventory", "PortfolioManager::Xml::UseDecimalType"],
        ["deliveryFacility", "PortfolioManager::Xml::UseYesNoType"],
        ["numberOfLettersPackagesPerYear", "PortfolioManager::Xml::UseIntegerType"],
        ["customUseDetail1", "PortfolioManager::Xml::CustomUseDetailsType"],
        ["customUseDetail2", "PortfolioManager::Xml::CustomUseDetailsType"],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterPropertyAssociationListType,
      :schema_name => XSD::QName.new(nil, "meterPropertyAssociationList"),
      :schema_element => [
        ["energyMeterAssociation", "PortfolioManager::Xml::EnergyMeterAssocAndConfigType", [0, 1]],
        ["waterMeterAssociation", "PortfolioManager::Xml::WaterMeterAssocAndConfigType", [0, 1]],
        ["wasteMeterAssociation", "PortfolioManager::Xml::WasteMeterAssocAndConfigType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MeterListType,
      :schema_name => XSD::QName.new(nil, "meterPropertyUseAssociationList"),
      :schema_element => [
        ["meterId", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::PropertyRepresentation,
      :schema_name => XSD::QName.new(nil, "propertyRepresentation"),
      :schema_element => [
        ["propertyRepresentationType", "SOAP::SOAPString"],
        ["tenantCommonAreaEnergyUseList", "PortfolioManager::Xml::TenantCommonAreaEnergyUseInformationType", [0, 1]],
        ["propertyRepresentationTypeOtherDesc", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::MappingType,
      :schema_name => XSD::QName.new(nil, "mapping"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AdditionalIdentifiers,
      :schema_name => XSD::QName.new(nil, "additionalIdentifiers"),
      :schema_element => [
        ["additionalIdentifier", "PortfolioManager::Xml::AdditionalIdentifier[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AdditionalIdentifier,
      :schema_name => XSD::QName.new(nil, "additionalIdentifier"),
      :schema_element => [
        ["additionalIdentifierType", "PortfolioManager::Xml::AdditionalIdentifierType"],
        ["description", "SOAP::SOAPString", [0, 1]],
        ["value", "SOAP::SOAPString", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AdditionalIdentifierTypes,
      :schema_name => XSD::QName.new(nil, "additionalIdentifierTypes"),
      :schema_element => [
        ["additionalIdentifierType", "PortfolioManager::Xml::AdditionalIdentifierType[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::AdditionalIdentifierType,
      :schema_name => XSD::QName.new(nil, "additionalIdentifierType"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "standardApproved") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "description") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::BaselineAndTargetType,
      :schema_name => XSD::QName.new(nil, "baselineAndTarget"),
      :schema_element => [
        ["baseline", "PortfolioManager::Xml::BaselineType", [0, 1]],
        ["target", "PortfolioManager::Xml::PerformanceTargetType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EduList,
      :schema_name => XSD::QName.new(nil, "eduList"),
      :schema_element => [
        ["edu", "PortfolioManager::Xml::Edu[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Edu,
      :schema_name => XSD::QName.new(nil, "edu"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "eduCode") => "SOAP::SOAPString",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "preferred") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "selected") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "eGridCode") => "SOAP::SOAPString",
        XSD::QName.new(nil, "eGridName") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::PgpList,
      :schema_name => XSD::QName.new(nil, "pgpList"),
      :schema_element => [
        ["pgp", "PortfolioManager::Xml::Pgp[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Pgp,
      :schema_name => XSD::QName.new(nil, "pgp"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "plantCode") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "selected") => "SOAP::SOAPBoolean",
        XSD::QName.new(nil, "eGridCode") => "SOAP::SOAPString",
        XSD::QName.new(nil, "eGridName") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::EGridSubregionList,
      :schema_name => XSD::QName.new(nil, "eGridSubregionList"),
      :schema_element => [
        ["eGridSubregion", "PortfolioManager::Xml::EGridSubregion[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::EGridSubregion,
      :schema_name => XSD::QName.new(nil, "eGridSubregion"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "code") => "SOAP::SOAPString",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "country") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AlertsType,
      :schema_name => XSD::QName.new(nil, "alerts"),
      :schema_element => [
        ["alert", "PortfolioManager::Xml::AlertsType::Alert[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "year") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "month") => "SOAP::SOAPInteger",
        XSD::QName.new(nil, "propertyId") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::AlertsType::Alert,
      :schema_name => XSD::QName.new(nil, "alert"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["name", "SOAP::SOAPString"],
        ["description", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterDataType,
      :schema_name => XSD::QName.new(nil, "wasteDataList"),
      :schema_element => [
        ["wasteData", "PortfolioManager::Xml::WasteMeterEntryType[]", [0, 120]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::WasteMeterEntryType,
      :schema_name => XSD::QName.new(nil, "wasteData"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["startDate", "SOAP::SOAPDate"],
        ["endDate", "SOAP::SOAPDate", [0, 1]],
        ["quantity", "SOAP::SOAPDecimal", [0, 1]],
        ["timesEmptied", "SOAP::SOAPDecimal", [0, 1]],
        ["averagePercentFull", "SOAP::SOAPLong", [0, 1]],
        ["cost", nil, [0, 1]],
        ["disposalDestination", "PortfolioManager::Xml::DisposalDestinationType", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "estimatedValue") => "SOAP::SOAPBoolean"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::InternationalWeatherStationList,
      :schema_name => XSD::QName.new(nil, "internationalWeatherStationList"),
      :schema_element => [
        ["station", "PortfolioManager::Xml::Station[]", [0, nil]],
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Station,
      :schema_name => XSD::QName.new(nil, "station"),
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "country") => "SOAP::SOAPString",
        XSD::QName.new(nil, "countryName") => "SOAP::SOAPString",
        XSD::QName.new(nil, "stationName") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::BillboardMetricsType,
      :schema_name => XSD::QName.new(nil, "billboardMetrics"),
      :schema_element => [
        ["metric", "PortfolioManager::Xml::BillboardMetricType[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::BillboardMetricSetting,
      :schema_name => XSD::QName.new(nil, "billboardMetricSetting"),
      :schema_element => [
        ["billboardMetric", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Verification,
      :schema_name => XSD::QName.new(nil, "verification"),
      :schema_element => [
        ["periodEndingDate", "SOAP::SOAPGYearMonth"],
        ["verificationDate", "SOAP::SOAPDate"],
        ["name", "SOAP::SOAPString"],
        ["title", "SOAP::SOAPString"],
        ["organization", "SOAP::SOAPString"],
        ["phone", "SOAP::SOAPString"],
        ["email", "SOAP::SOAPString"],
        ["postalCode", "SOAP::SOAPString"],
        ["professionalDesignationList", "PortfolioManager::Xml::ProfessionalDesignationList", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ProfessionalDesignationList,
      :schema_name => XSD::QName.new(nil, "professionalDesignationList"),
      :schema_element => [
        ["professionalDesignation", "PortfolioManager::Xml::ProfessionalDesignationList::ProfessionalDesignation[]", [1, 6]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ProfessionalDesignationList::ProfessionalDesignation,
      :schema_name => XSD::QName.new(nil, "professionalDesignation"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["licenseList", "PortfolioManager::Xml::LicenseList", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPString",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::LicenseList,
      :schema_name => XSD::QName.new(nil, "licenseList"),
      :schema_element => [
        ["license", "PortfolioManager::Xml::License[]", [0, 50]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::License,
      :schema_name => XSD::QName.new(nil, "license"),
      :schema_element => [
        ["index", "SOAP::SOAPString", [0, 1]],
        ["countryCode", "PortfolioManager::Xml::CountryCode", [0, 1]],
        ["licenseNumber", "SOAP::SOAPString", [0, 1]],
        ["licenseState", "PortfolioManager::Xml::StateCode", [0, 1]],
        ["licenseName", "SOAP::SOAPString", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::IndividualMeter,
      :schema_name => XSD::QName.new(nil, "individualMeter"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["meterId", "SOAP::SOAPLong", [0, 1]],
        ["customId", "SOAP::SOAPString", [0, 1]],
        ["customIdName", "SOAP::SOAPString", [0, 1]],
        ["serviceAddress", "SOAP::SOAPString", [0, 1]],
        ["inUse", "SOAP::SOAPBoolean", [0, 1]],
        ["inactiveDate", "SOAP::SOAPDate", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType,
      :schema_name => XSD::QName.new(nil, "hey"),
      :schema_element => [
        ["propertyInfo", "PortfolioManager::Xml::HeyType::PropertyInfo"],
        ["meter", "PortfolioManager::Xml::HeyType::Meter[]", [1, 10]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::PropertyInfo,
      :schema_name => XSD::QName.new(nil, "propertyInfo"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["postalCode", "SOAP::SOAPString"],
        ["numberOfOccupants", "SOAP::SOAPInt"],
        ["grossFloorArea", "PortfolioManager::Xml::GrossFloorAreaType"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::Meter::MeterData,
      :schema_name => XSD::QName.new(nil, "meterData"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["meterConsumption", "PortfolioManager::Xml::MeterConsumptionType[]", [1, 120]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::HeyType::Meter,
      :schema_name => XSD::QName.new(nil, "meter"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["type", "PortfolioManager::Xml::AllEnergyMetersType"],
        ["unitOfMeasure", "PortfolioManager::Xml::DesignUnitOfMeasure"],
        ["meterData", "PortfolioManager::Xml::HeyType::Meter::MeterData"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics,
      :schema_name => XSD::QName.new(nil, "reportMetrics"),
      :schema_element => [
        ["group", "PortfolioManager::Xml::ReportMetrics::Group[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group::Metrics::Metric,
      :schema_name => XSD::QName.new(nil, "metric"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "description") => "SOAP::SOAPString",
        XSD::QName.new(nil, "dataType") => "SOAP::SOAPString",
        XSD::QName.new(nil, "uom") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group::Metrics,
      :schema_name => XSD::QName.new(nil, "metrics"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["metric", "PortfolioManager::Xml::ReportMetrics::Group::Metrics::Metric[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportMetrics::Group,
      :schema_name => XSD::QName.new(nil, "group"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["metrics", "PortfolioManager::Xml::ReportMetrics::Group::Metrics"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "name") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::TemplateType,
      :schema_name => XSD::QName.new(nil, "templateType")
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportTemplateType,
      :schema_name => XSD::QName.new(nil, "reportTemplate"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["name", "SOAP::SOAPString"],
        ["templateType", "SOAP::SOAPString", [0, 1]],
        ["metrics", "PortfolioManager::Xml::ReportTemplateType::Metrics", [0, 1]],
        ["reportId", "SOAP::SOAPLong", [0, 1]],
        ["audit", "PortfolioManager::Xml::LogType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportTemplateType::Metrics,
      :schema_name => XSD::QName.new(nil, "metrics"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Report,
      :schema_name => XSD::QName.new(nil, "report"),
      :schema_element => [
        ["id", "SOAP::SOAPLong", [0, 1]],
        ["type", "PortfolioManager::Xml::ReportType", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType"],
        ["templateId", "SOAP::SOAPLong", [0, 1]],
        ["templateName", "SOAP::SOAPString", [0, 1]],
        ["properties", "PortfolioManager::Xml::Report::Properties", [0, 1]],
        ["reportGenerationStatus", "PortfolioManager::Xml::ReportStatusType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::Report::Properties,
      :schema_name => XSD::QName.new(nil, "properties"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportStatusDef,
      :schema_name => XSD::QName.new(nil, "reportStatus"),
      :schema_element => [
        ["status", "PortfolioManager::Xml::ReportStatusType"],
        ["description", "SOAP::SOAPString", [0, 1]],
        ["generationStartDate", "SOAP::SOAPDateTime", [0, 1]],
        ["generationEndDate", "SOAP::SOAPDateTime", [0, 1]],
        ["submittedDate", "SOAP::SOAPDateTime", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataResponse,
      :schema_name => XSD::QName.new(nil, "dataResponse"),
      :schema_element => [
        ["dataRequestId", "SOAP::SOAPLong", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType", [0, 1]],
        ["properties", "PortfolioManager::Xml::DataResponse::Properties", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataResponse::Properties,
      :schema_name => XSD::QName.new(nil, "properties"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["id", "SOAP::SOAPLong[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest,
      :schema_name => XSD::QName.new(nil, "dataRequest"),
      :schema_element => [
        ["name", "SOAP::SOAPString"],
        ["requesterDetails", "PortfolioManager::Xml::DataRequest::RequesterDetails"],
        ["instructions", "SOAP::SOAPString", [0, 1]],
        ["timeframe", "PortfolioManager::Xml::TimeframeType", [0, 1]],
        ["locations", "PortfolioManager::Xml::DataRequest::Locations", [0, 1]],
        ["dataRequestStatus", "PortfolioManager::Xml::DataRequestStatusType"],
        ["dataRequestAcceptedBy", "SOAP::SOAPString", [0, 1]],
        ["dataRequestAcceptedDate", "SOAP::SOAPDateTime", [0, 1]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::RequesterDetails,
      :schema_name => XSD::QName.new(nil, "requesterDetails"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["firstName", "SOAP::SOAPString"],
        ["lastName", "SOAP::SOAPString"],
        ["email", "SOAP::SOAPString"],
        ["phone", "SOAP::SOAPString"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::Locations::Location,
      :schema_name => XSD::QName.new(nil, "location"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [],
      :schema_attribute => {
        XSD::QName.new(nil, "country") => "SOAP::SOAPString",
        XSD::QName.new(nil, "state") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::DataRequest::Locations,
      :schema_name => XSD::QName.new(nil, "locations"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["location", "PortfolioManager::Xml::DataRequest::Locations::Location[]", [1, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResponseStatus,
      :schema_name => XSD::QName.new(nil, "responseStatus"),
      :schema_element => [
        ["status", "PortfolioManager::Xml::ReportStatusType"],
        ["description", "SOAP::SOAPString", [0, 1]],
        ["generationStartDate", "SOAP::SOAPDateTime", [0, 1]],
        ["generationEndDate", "SOAP::SOAPDateTime", [0, 1]],
        ["submittedDate", "SOAP::SOAPDateTime", [0, 1]],
        ["sentDate", "SOAP::SOAPDateTime", [0, 1]],
        ["errors", "PortfolioManager::Xml::ResponseStatus::Errors", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ResponseStatus::Errors,
      :schema_name => XSD::QName.new(nil, "errors"),
      :is_anonymous => true,
      :schema_qualified => false,
      :schema_element => [
        ["links", "PortfolioManager::Xml::LinksType", [0, 1]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportError,
      :schema_name => XSD::QName.new(nil, "reportError"),
      :schema_element => [
        ["reportId", "SOAP::SOAPLong"],
        ["templateName", "SOAP::SOAPString"],
        ["dateGenerated", "SOAP::SOAPDateTime"],
        ["numberOfProperties", "SOAP::SOAPInteger"],
        ["missingMetrics", "PortfolioManager::Xml::ReportError::MissingMetrics"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportError::MissingMetrics::PropertyMissingMetric::Metric,
      :schema_name => XSD::QName.new(nil, "metric"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["error", "SOAP::SOAPString"]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "name") => "SOAP::SOAPString",
        XSD::QName.new(nil, "id") => "SOAP::SOAPLong"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportError::MissingMetrics::PropertyMissingMetric,
      :schema_name => XSD::QName.new(nil, "propertyMissingMetric"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["yearEndingDate", "SOAP::SOAPDate", [0, 1]],
        ["metric", "PortfolioManager::Xml::ReportError::MissingMetrics::PropertyMissingMetric::Metric[]", [0, nil]]
      ],
      :schema_attribute => {
        XSD::QName.new(nil, "propertyId") => "SOAP::SOAPLong",
        XSD::QName.new(nil, "propertyName") => "SOAP::SOAPString"
      }
    )

    Registry.register(
      :class => PortfolioManager::Xml::ReportError::MissingMetrics,
      :schema_name => XSD::QName.new(nil, "missingMetrics"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["propertyMissingMetric", "PortfolioManager::Xml::ReportError::MissingMetrics::PropertyMissingMetric[]", [0, nil]]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SendDataResponse,
      :schema_name => XSD::QName.new(nil, "sendDataResponse"),
      :schema_element => [
        ["additionalEmailAddresses", "PortfolioManager::Xml::SendDataResponse::AdditionalEmailAddresses", [0, 1]],
        ["fileFormat", "SOAP::SOAPString"],
        ["submitWithErrors", "SOAP::SOAPBoolean"]
      ]
    )

    Registry.register(
      :class => PortfolioManager::Xml::SendDataResponse::AdditionalEmailAddresses,
      :schema_name => XSD::QName.new(nil, "additionalEmailAddresses"),
      :is_anonymous => true,
      :schema_qualified => true,
      :schema_element => [
        ["email", "SOAP::SOAPString[]", [0, 50]]
      ]
    )
  end
end
