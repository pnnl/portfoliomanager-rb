require "xsd/qname"

module PortfolioManager
  module Xml
    # {}responseType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    # @!attribute [rw] errors
    #   @return [PortfolioManager::Xml::ErrorsType]
    # @!attribute [rw] warnings
    #   @return [PortfolioManager::Xml::WarningsType]
    # @!attribute [rw] xmlattr_status
    #   @return [SOAP::SOAPString]
    class ResponseType
      AttrStatus = XSD::QName.new(nil, "status")

      attr_accessor :id
      attr_accessor :links
      attr_accessor :errors
      attr_accessor :warnings

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_status
        __xmlattr[AttrStatus]
      end

      def xmlattr_status=(value)
        __xmlattr[AttrStatus] = value
      end

      def initialize(id = nil, links = nil, errors = nil, warnings = nil)
        @id = id
        @links = links
        @errors = errors
        @warnings = warnings
        @__xmlattr = {}
      end
    end

    # {}errorType
    # @!attribute [rw] xmlattr_errorNumber
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_errorDescription
    #   @return [SOAP::SOAPString]
    class ErrorType
      AttrErrorDescription = XSD::QName.new(nil, "errorDescription")
      AttrErrorNumber = XSD::QName.new(nil, "errorNumber")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_errorNumber
        __xmlattr[AttrErrorNumber]
      end

      def xmlattr_errorNumber=(value)
        __xmlattr[AttrErrorNumber] = value
      end

      def xmlattr_errorDescription
        __xmlattr[AttrErrorDescription]
      end

      def xmlattr_errorDescription=(value)
        __xmlattr[AttrErrorDescription] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}errorsType
    class ErrorsType < ::Array
    end

    # {}warningsType
    class WarningsType < ::Array
    end

    # {}warningType
    # @!attribute [rw] xmlattr_warningNumber
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_warningDescription
    #   @return [SOAP::SOAPString]
    class WarningType
      AttrWarningDescription = XSD::QName.new(nil, "warningDescription")
      AttrWarningNumber = XSD::QName.new(nil, "warningNumber")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_warningNumber
        __xmlattr[AttrWarningNumber]
      end

      def xmlattr_warningNumber=(value)
        __xmlattr[AttrWarningNumber] = value
      end

      def xmlattr_warningDescription
        __xmlattr[AttrWarningDescription]
      end

      def xmlattr_warningDescription=(value)
        __xmlattr[AttrWarningDescription] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}linksType
    class LinksType < ::Array
    end

    # {}linkType
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] xmlattr_linkDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_link
    #   @return [SOAP::SOAPAnyURI]
    # @!attribute [rw] xmlattr_httpMethod
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_hint
    #   @return [SOAP::SOAPString]
    class LinkType
      AttrHint = XSD::QName.new(nil, "hint")
      AttrHttpMethod = XSD::QName.new(nil, "httpMethod")
      AttrId = XSD::QName.new(nil, "id")
      AttrLink = XSD::QName.new(nil, "link")
      AttrLinkDescription = XSD::QName.new(nil, "linkDescription")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_linkDescription
        __xmlattr[AttrLinkDescription]
      end

      def xmlattr_linkDescription=(value)
        __xmlattr[AttrLinkDescription] = value
      end

      def xmlattr_link
        __xmlattr[AttrLink]
      end

      def xmlattr_link=(value)
        __xmlattr[AttrLink] = value
      end

      def xmlattr_httpMethod
        __xmlattr[AttrHttpMethod]
      end

      def xmlattr_httpMethod=(value)
        __xmlattr[AttrHttpMethod] = value
      end

      def xmlattr_hint
        __xmlattr[AttrHint]
      end

      def xmlattr_hint=(value)
        __xmlattr[AttrHint] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}hierarchyType
    # @!attribute [rw] accountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] propertyId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] propertyUseId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] useDetailId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] meterId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] consumptionDataId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] wasteMeterDataId
    #   @return [SOAP::SOAPLong]
    class HierarchyType
      attr_accessor :accountId
      attr_accessor :username
      attr_accessor :propertyId
      attr_accessor :propertyUseId
      attr_accessor :useDetailId
      attr_accessor :meterId
      attr_accessor :consumptionDataId
      attr_accessor :wasteMeterDataId

      def initialize(accountId = nil, username = nil, propertyId = nil, propertyUseId = nil, useDetailId = nil, meterId = nil, consumptionDataId = nil, wasteMeterDataId = nil)
        @accountId = accountId
        @username = username
        @propertyId = propertyId
        @propertyUseId = propertyUseId
        @useDetailId = useDetailId
        @meterId = meterId
        @consumptionDataId = consumptionDataId
        @wasteMeterDataId = wasteMeterDataId
      end
    end

    # {}propertyType
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] constructionStatus
    #   @return [PortfolioManager::Xml::ConstructionStatusType]
    # @!attribute [rw] primaryFunction
    #   @return [PortfolioManager::Xml::PrimaryFunctionType]
    # @!attribute [rw] grossFloorArea
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] irrigatedArea
    #   @return [PortfolioManager::Xml::IrrigationAreaType]
    # @!attribute [rw] yearBuilt
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] address
    #   @return [PortfolioManager::Xml::AddressType]
    # @!attribute [rw] numberOfBuildings
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] isFederalProperty
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] federalOwner
    #   @return [PortfolioManager::Xml::CountryList]
    # @!attribute [rw] agency
    #   @return [PortfolioManager::Xml::AgencyType]
    # @!attribute [rw] agencyDepartmentRegion
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] federalCampus
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] occupancyPercentage
    #   @return [PortfolioManager::Xml::OccupancyType]
    # @!attribute [rw] notes
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] isInstitutionalProperty
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] accessLevel
    #   @return [PortfolioManager::Xml::ShareLevelType]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class PropertyType
      attr_accessor :name
      attr_accessor :constructionStatus
      attr_accessor :primaryFunction
      attr_accessor :grossFloorArea
      attr_accessor :irrigatedArea
      attr_accessor :yearBuilt
      attr_accessor :address
      attr_accessor :numberOfBuildings
      attr_accessor :isFederalProperty
      attr_accessor :federalOwner
      attr_accessor :agency
      attr_accessor :agencyDepartmentRegion
      attr_accessor :federalCampus
      attr_accessor :occupancyPercentage
      attr_accessor :notes
      attr_accessor :isInstitutionalProperty
      attr_accessor :accessLevel
      attr_accessor :audit

      def initialize(name = nil, constructionStatus = nil, primaryFunction = nil, grossFloorArea = nil, irrigatedArea = nil, yearBuilt = nil, address = nil, numberOfBuildings = nil, isFederalProperty = nil, federalOwner = nil, agency = nil, agencyDepartmentRegion = nil, federalCampus = nil, occupancyPercentage = nil, notes = nil, isInstitutionalProperty = nil, accessLevel = nil, audit = nil)
        @name = name
        @constructionStatus = constructionStatus
        @primaryFunction = primaryFunction
        @grossFloorArea = grossFloorArea
        @irrigatedArea = irrigatedArea
        @yearBuilt = yearBuilt
        @address = address
        @numberOfBuildings = numberOfBuildings
        @isFederalProperty = isFederalProperty
        @federalOwner = federalOwner
        @agency = agency
        @agencyDepartmentRegion = agencyDepartmentRegion
        @federalCampus = federalCampus
        @occupancyPercentage = occupancyPercentage
        @notes = notes
        @isInstitutionalProperty = isInstitutionalProperty
        @accessLevel = accessLevel
        @audit = audit
      end
    end

    # {}addressType
    # @!attribute [rw] xmlattr_address1
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_address2
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_city
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_county
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_postalCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_state
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_otherState
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_country
    #   @return [SOAP::SOAPString]
    class AddressType
      AttrAddress1 = XSD::QName.new(nil, "address1")
      AttrAddress2 = XSD::QName.new(nil, "address2")
      AttrCity = XSD::QName.new(nil, "city")
      AttrCountry = XSD::QName.new(nil, "country")
      AttrCounty = XSD::QName.new(nil, "county")
      AttrOtherState = XSD::QName.new(nil, "otherState")
      AttrPostalCode = XSD::QName.new(nil, "postalCode")
      AttrState = XSD::QName.new(nil, "state")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_address1
        __xmlattr[AttrAddress1]
      end

      def xmlattr_address1=(value)
        __xmlattr[AttrAddress1] = value
      end

      def xmlattr_address2
        __xmlattr[AttrAddress2]
      end

      def xmlattr_address2=(value)
        __xmlattr[AttrAddress2] = value
      end

      def xmlattr_city
        __xmlattr[AttrCity]
      end

      def xmlattr_city=(value)
        __xmlattr[AttrCity] = value
      end

      def xmlattr_county
        __xmlattr[AttrCounty]
      end

      def xmlattr_county=(value)
        __xmlattr[AttrCounty] = value
      end

      def xmlattr_postalCode
        __xmlattr[AttrPostalCode]
      end

      def xmlattr_postalCode=(value)
        __xmlattr[AttrPostalCode] = value
      end

      def xmlattr_state
        __xmlattr[AttrState]
      end

      def xmlattr_state=(value)
        __xmlattr[AttrState] = value
      end

      def xmlattr_otherState
        __xmlattr[AttrOtherState]
      end

      def xmlattr_otherState=(value)
        __xmlattr[AttrOtherState] = value
      end

      def xmlattr_country
        __xmlattr[AttrCountry]
      end

      def xmlattr_country=(value)
        __xmlattr[AttrCountry] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}useAttributeBase
    # abstract
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil)
        @audit = audit
        @__xmlattr = {}
      end
    end

    # {}floorAreaTypeBase
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class FloorAreaTypeBase < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil)
        @audit = audit
        @__xmlattr = {}
      end
    end

    # {}grossFloorAreaType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class GrossFloorAreaType < FloorAreaTypeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}optionalFloorAreaType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class OptionalFloorAreaType < FloorAreaTypeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}useYesNoType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [PortfolioManager::Xml::YesNo]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UseYesNoType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}useStringType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UseStringType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}useDecimalType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UseDecimalType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}useIntegerType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UseIntegerType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}numberOfWeeklyIceResurfacingType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class NumberOfWeeklyIceResurfacingType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}percentCooledType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PercentCooledType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}percentHeatedType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PercentHeatedType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}percentOfficeCooledType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PercentOfficeCooledType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}percentOfficeHeatedType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PercentOfficeHeatedType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}monthsInUseType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class MonthsInUseType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}monthsSchoolInUseType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class MonthsSchoolInUseType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}poolType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PoolType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}residentPopulationType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class ResidentPopulationType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}poolSizeType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class PoolSizeType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}ownedByType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class OwnedByType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}coolingEquipmentRedundancyType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class CoolingEquipmentRedundancyType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}upsSystemRedundancyType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class UpsSystemRedundancyType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}hoursPerDayGuestsOnsiteType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class HoursPerDayGuestsOnsiteType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}itEnergyConfigurationType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class ItEnergyConfigurationType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}onsiteLaundryType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class OnsiteLaundryType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}numberOfWeekdaysType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    class NumberOfWeekdaysType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}amountOfLaundryProcessedAnnuallyType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class AmountOfLaundryProcessedAnnuallyType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}PlantDesignFlowRateType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class PlantDesignFlowRateType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}lengthOfAllOpenClosedRefrigerationUnitsType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class LengthOfAllOpenClosedRefrigerationUnitsType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}ceilingHeightUnitsType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class CeilingHeightUnitsType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}clearHeightUnitsType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class ClearHeightUnitsType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(audit = nil, value = nil)
        @audit = audit
        @value = value
        @__xmlattr = {}
      end
    end

    # {}customUseDetailsType
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] customName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] customUom
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_currentAsOf
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] xmlattr_temporary
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_dataType
    #   @return [SOAP::SOAPString]
    class CustomUseDetailsType < UseAttributeBase
      AttrCurrentAsOf = XSD::QName.new(nil, "currentAsOf")
      AttrDataType = XSD::QName.new(nil, "dataType")
      AttrDefault = XSD::QName.new(nil, "default")
      AttrId = XSD::QName.new(nil, "id")
      AttrTemporary = XSD::QName.new(nil, "temporary")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :audit
      attr_accessor :value
      attr_accessor :customName
      attr_accessor :customUom

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_currentAsOf
        __xmlattr[AttrCurrentAsOf]
      end

      def xmlattr_currentAsOf=(value)
        __xmlattr[AttrCurrentAsOf] = value
      end

      def xmlattr_temporary
        __xmlattr[AttrTemporary]
      end

      def xmlattr_temporary=(value)
        __xmlattr[AttrTemporary] = value
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def xmlattr_dataType
        __xmlattr[AttrDataType]
      end

      def xmlattr_dataType=(value)
        __xmlattr[AttrDataType] = value
      end

      def initialize(audit = nil, value = nil, customName = nil, customUom = nil)
        @audit = audit
        @value = value
        @customName = customName
        @customUom = customUom
        @__xmlattr = {}
      end
    end

    # {}logType
    # @!attribute [rw] createdBy
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] createdByAccountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] createdDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] lastUpdatedBy
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] lastUpdatedByAccountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] lastUpdatedDate
    #   @return [SOAP::SOAPDateTime]
    class LogType
      attr_accessor :createdBy
      attr_accessor :createdByAccountId
      attr_accessor :createdDate
      attr_accessor :lastUpdatedBy
      attr_accessor :lastUpdatedByAccountId
      attr_accessor :lastUpdatedDate

      def initialize(createdBy = nil, createdByAccountId = nil, createdDate = nil, lastUpdatedBy = nil, lastUpdatedByAccountId = nil, lastUpdatedDate = nil)
        @createdBy = createdBy
        @createdByAccountId = createdByAccountId
        @createdDate = createdDate
        @lastUpdatedBy = lastUpdatedBy
        @lastUpdatedByAccountId = lastUpdatedByAccountId
        @lastUpdatedDate = lastUpdatedDate
      end
    end

    # {}irrigationAreaTypeBase
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class IrrigationAreaTypeBase
      AttrDefault = XSD::QName.new(nil, "default")
      AttrUnits = XSD::QName.new(nil, "units")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}irrigationAreaType
    # @!attribute [rw] value
    #   @return [Object]
    # @!attribute [rw] xmlattr_default
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_units
    #   @return [SOAP::SOAPString]
    class IrrigationAreaType < IrrigationAreaTypeBase
      AttrDefault = XSD::QName.new(nil, "default")
      AttrUnits = XSD::QName.new(nil, "units")

      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_default
        __xmlattr[AttrDefault]
      end

      def xmlattr_default=(value)
        __xmlattr[AttrDefault] = value
      end

      def xmlattr_units
        __xmlattr[AttrUnits]
      end

      def xmlattr_units=(value)
        __xmlattr[AttrUnits] = value
      end

      def initialize(value = nil)
        @value = value
        @__xmlattr = {}
      end
    end

    # {}sharingResponseType
    # @!attribute [rw] action
    #   @return [PortfolioManager::Xml::AcceptRejectType]
    # @!attribute [rw] note
    #   @return [SOAP::SOAPString]
    class SharingResponseType
      attr_accessor :action
      attr_accessor :note

      def initialize(action = nil, note = nil)
        @action = action
        @note = note
      end
    end

    # {}terminateShareResponseType
    # @!attribute [rw] note
    #   @return [SOAP::SOAPString]
    class TerminateShareResponseType
      attr_accessor :note

      def initialize(note = nil)
        @note = note
      end
    end

    # {}notificationListType
    class NotificationListType < ::Array
    end

    # {}notificationType
    # @!attribute [rw] notificationTypeCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] notificationId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] accountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] propertyId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] meterId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] notificationCreatedDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] notificationCreatedBy
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] notificationCreatedByAccountId
    #   @return [SOAP::SOAPString]
    class NotificationType
      attr_accessor :notificationTypeCode
      attr_accessor :notificationId
      attr_accessor :description
      attr_accessor :accountId
      attr_accessor :username
      attr_accessor :propertyId
      attr_accessor :meterId
      attr_accessor :notificationCreatedDate
      attr_accessor :notificationCreatedBy
      attr_accessor :notificationCreatedByAccountId

      def initialize(notificationTypeCode = nil, notificationId = nil, description = nil, accountId = nil, username = nil, propertyId = nil, meterId = nil, notificationCreatedDate = nil, notificationCreatedBy = nil, notificationCreatedByAccountId = nil)
        @notificationTypeCode = notificationTypeCode
        @notificationId = notificationId
        @description = description
        @accountId = accountId
        @username = username
        @propertyId = propertyId
        @meterId = meterId
        @notificationCreatedDate = notificationCreatedDate
        @notificationCreatedBy = notificationCreatedBy
        @notificationCreatedByAccountId = notificationCreatedByAccountId
      end
    end

    # {}pendingListType
    # @!attribute [rw] account
    #   @return [PortfolioManager::Xml::PendingAccountsType]
    # @!attribute [rw] property
    #   @return [PortfolioManager::Xml::PendingPropertiesType]
    # @!attribute [rw] meter
    #   @return [PortfolioManager::Xml::PendingMetersType]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    class PendingListType
      attr_accessor :account
      attr_accessor :property
      attr_accessor :meter
      attr_accessor :links

      def initialize(account = [], property = [], meter = [], links = nil)
        @account = account
        @property = property
        @meter = meter
        @links = links
      end
    end

    # {}pendingAccountsType
    # @!attribute [rw] accountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] customFieldList
    #   @return [PortfolioManager::Xml::CustomFieldList]
    # @!attribute [rw] accountInfo
    #   @return [PortfolioManager::Xml::AccountInfo]
    # @!attribute [rw] connectionAudit
    #   @return [PortfolioManager::Xml::LogType]
    class PendingAccountsType
      attr_accessor :accountId
      attr_accessor :username
      attr_accessor :customFieldList
      attr_accessor :accountInfo
      attr_accessor :connectionAudit

      def initialize(accountId = nil, username = nil, customFieldList = nil, accountInfo = nil, connectionAudit = nil)
        @accountId = accountId
        @username = username
        @customFieldList = customFieldList
        @accountInfo = accountInfo
        @connectionAudit = connectionAudit
      end
    end

    # {}pendingPropertiesType
    # @!attribute [rw] propertyId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] customFieldList
    #   @return [PortfolioManager::Xml::CustomFieldList]
    # @!attribute [rw] accessLevel
    #   @return [PortfolioManager::Xml::ShareLevelType]
    # @!attribute [rw] accountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] propertyInfo
    #   @return [PortfolioManager::Xml::PropertyType]
    # @!attribute [rw] shareAudit
    #   @return [PortfolioManager::Xml::LogType]
    class PendingPropertiesType
      attr_accessor :propertyId
      attr_accessor :customFieldList
      attr_accessor :accessLevel
      attr_accessor :accountId
      attr_accessor :username
      attr_accessor :propertyInfo
      attr_accessor :shareAudit

      def initialize(propertyId = nil, customFieldList = nil, accessLevel = nil, accountId = nil, username = nil, propertyInfo = nil, shareAudit = nil)
        @propertyId = propertyId
        @customFieldList = customFieldList
        @accessLevel = accessLevel
        @accountId = accountId
        @username = username
        @propertyInfo = propertyInfo
        @shareAudit = shareAudit
      end
    end

    # {}pendingMetersType
    # @!attribute [rw] meterId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] propertyId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] accountId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] customFieldList
    #   @return [PortfolioManager::Xml::CustomFieldList]
    # @!attribute [rw] accessLevel
    #   @return [PortfolioManager::Xml::ShareLevelType]
    # @!attribute [rw] propertyInfo
    #   @return [PortfolioManager::Xml::PropertyType]
    # @!attribute [rw] meterInfo
    #   @return [PortfolioManager::Xml::MeterType]
    # @!attribute [rw] wasteMeterInfo
    #   @return [PortfolioManager::Xml::TypeOfWasteMeter]
    # @!attribute [rw] shareAudit
    #   @return [PortfolioManager::Xml::LogType]
    class PendingMetersType
      attr_accessor :meterId
      attr_accessor :propertyId
      attr_accessor :accountId
      attr_accessor :username
      attr_accessor :customFieldList
      attr_accessor :accessLevel
      attr_accessor :propertyInfo
      attr_accessor :meterInfo
      attr_accessor :wasteMeterInfo
      attr_accessor :shareAudit

      def initialize(meterId = nil, propertyId = nil, accountId = nil, username = nil, customFieldList = nil, accessLevel = nil, propertyInfo = nil, meterInfo = nil, wasteMeterInfo = nil, shareAudit = nil)
        @meterId = meterId
        @propertyId = propertyId
        @accountId = accountId
        @username = username
        @customFieldList = customFieldList
        @accessLevel = accessLevel
        @propertyInfo = propertyInfo
        @meterInfo = meterInfo
        @wasteMeterInfo = wasteMeterInfo
        @shareAudit = shareAudit
      end
    end

    # {}meterType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] type
    #   @return [PortfolioManager::Xml::TypeOfMeter]
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] metered
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] unitOfMeasure
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] firstBillDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] inUse
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] inactiveDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] otherDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] accessLevel
    #   @return [PortfolioManager::Xml::ShareLevelType]
    # @!attribute [rw] aggregateMeter
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class MeterType
      attr_accessor :id
      attr_accessor :type
      attr_accessor :name
      attr_accessor :metered
      attr_accessor :unitOfMeasure
      attr_accessor :firstBillDate
      attr_accessor :inUse
      attr_accessor :inactiveDate
      attr_accessor :otherDescription
      attr_accessor :accessLevel
      attr_accessor :aggregateMeter
      attr_accessor :audit

      def initialize(id = nil, type = nil, name = nil, metered = nil, unitOfMeasure = nil, firstBillDate = nil, inUse = nil, inactiveDate = nil, otherDescription = nil, accessLevel = nil, aggregateMeter = nil, audit = nil)
        @id = id
        @type = type
        @name = name
        @metered = metered
        @unitOfMeasure = unitOfMeasure
        @firstBillDate = firstBillDate
        @inUse = inUse
        @inactiveDate = inactiveDate
        @otherDescription = otherDescription
        @accessLevel = accessLevel
        @aggregateMeter = aggregateMeter
        @audit = audit
      end
    end

    # {}typeOfWasteMeter
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] type
    #   @return [PortfolioManager::Xml::WasteMeterType]
    # @!attribute [rw] unitOfMeasure
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] dataEntryMethod
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] containerSize
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] firstBillDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] inUse
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] inactiveDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] accessLevel
    #   @return [PortfolioManager::Xml::ShareLevelType]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class TypeOfWasteMeter
      attr_accessor :id
      attr_accessor :name
      attr_accessor :type
      attr_accessor :unitOfMeasure
      attr_accessor :dataEntryMethod
      attr_accessor :containerSize
      attr_accessor :firstBillDate
      attr_accessor :inUse
      attr_accessor :inactiveDate
      attr_accessor :accessLevel
      attr_accessor :audit

      def initialize(id = nil, name = nil, type = nil, unitOfMeasure = nil, dataEntryMethod = nil, containerSize = nil, firstBillDate = nil, inUse = nil, inactiveDate = nil, accessLevel = nil, audit = nil)
        @id = id
        @name = name
        @type = type
        @unitOfMeasure = unitOfMeasure
        @dataEntryMethod = dataEntryMethod
        @containerSize = containerSize
        @firstBillDate = firstBillDate
        @inUse = inUse
        @inactiveDate = inactiveDate
        @accessLevel = accessLevel
        @audit = audit
      end
    end

    # {}accountType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] password
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] contact
    #   @return [PortfolioManager::Xml::ContactType]
    # @!attribute [rw] organization
    #   @return [PortfolioManager::Xml::OrganizationType]
    # @!attribute [rw] webserviceUser
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] searchable
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] includeTestPropertiesInGraphics
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] emailPreferenceCanadianAccount
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] billboardMetric
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] languagePreference
    #   @return [SOAP::SOAPString]
    class AccountType
      attr_accessor :id
      attr_accessor :username
      attr_accessor :password
      attr_accessor :contact
      attr_accessor :organization
      attr_accessor :webserviceUser
      attr_accessor :searchable
      attr_accessor :includeTestPropertiesInGraphics
      attr_accessor :emailPreferenceCanadianAccount
      attr_accessor :billboardMetric
      attr_accessor :languagePreference

      def initialize(id = nil, username = nil, password = nil, contact = nil, organization = nil, webserviceUser = nil, searchable = nil, includeTestPropertiesInGraphics = nil, emailPreferenceCanadianAccount = nil, billboardMetric = nil, languagePreference = nil)
        @id = id
        @username = username
        @password = password
        @contact = contact
        @organization = organization
        @webserviceUser = webserviceUser
        @searchable = searchable
        @includeTestPropertiesInGraphics = includeTestPropertiesInGraphics
        @emailPreferenceCanadianAccount = emailPreferenceCanadianAccount
        @billboardMetric = billboardMetric
        @languagePreference = languagePreference
      end
    end

    # {}contactType
    # @!attribute [rw] firstName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] lastName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] email
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] address
    #   @return [PortfolioManager::Xml::AddressType]
    # @!attribute [rw] jobTitle
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] phone
    #   @return [SOAP::SOAPString]
    class ContactType
      attr_accessor :firstName
      attr_accessor :lastName
      attr_accessor :email
      attr_accessor :address
      attr_accessor :jobTitle
      attr_accessor :phone

      def initialize(firstName = nil, lastName = nil, email = nil, address = nil, jobTitle = nil, phone = nil)
        @firstName = firstName
        @lastName = lastName
        @email = email
        @address = address
        @jobTitle = jobTitle
        @phone = phone
      end
    end

    # {}organizationType
    # @!attribute [rw] primaryBusiness
    #   @return [PortfolioManager::Xml::PrimaryBusinessType]
    # @!attribute [rw] otherBusinessDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] energyStarPartner
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] energyStarPartnerType
    #   @return [PortfolioManager::Xml::TypeOfEnergyStarPartner]
    # @!attribute [rw] otherPartnerDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    class OrganizationType
      AttrName = XSD::QName.new(nil, "name")

      attr_accessor :primaryBusiness
      attr_accessor :otherBusinessDescription
      attr_accessor :energyStarPartner
      attr_accessor :energyStarPartnerType
      attr_accessor :otherPartnerDescription

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def initialize(primaryBusiness = nil, otherBusinessDescription = nil, energyStarPartner = nil, energyStarPartnerType = nil, otherPartnerDescription = nil)
        @primaryBusiness = primaryBusiness
        @otherBusinessDescription = otherBusinessDescription
        @energyStarPartner = energyStarPartner
        @energyStarPartnerType = energyStarPartnerType
        @otherPartnerDescription = otherPartnerDescription
        @__xmlattr = {}
      end
    end

    # {}AgencyType
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_code
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_country
    #   @return [SOAP::SOAPString]
    class AgencyType
      AttrCode = XSD::QName.new(nil, "code")
      AttrCountry = XSD::QName.new(nil, "country")
      AttrId = XSD::QName.new(nil, "id")
      AttrName = XSD::QName.new(nil, "name")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_code
        __xmlattr[AttrCode]
      end

      def xmlattr_code=(value)
        __xmlattr[AttrCode] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_country
        __xmlattr[AttrCountry]
      end

      def xmlattr_country=(value)
        __xmlattr[AttrCountry] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}propertyMetricsType
    # @!attribute [rw] metric
    #   @return [PortfolioManager::Xml::Metric]
    # @!attribute [rw] xmlattr_year
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] xmlattr_month
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] xmlattr_periodType
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_propertyId
    #   @return [SOAP::SOAPLong]
    class PropertyMetricsType
      AttrMonth = XSD::QName.new(nil, "month")
      AttrPeriodType = XSD::QName.new(nil, "periodType")
      AttrPropertyId = XSD::QName.new(nil, "propertyId")
      AttrYear = XSD::QName.new(nil, "year")

      attr_accessor :metric

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_year
        __xmlattr[AttrYear]
      end

      def xmlattr_year=(value)
        __xmlattr[AttrYear] = value
      end

      def xmlattr_month
        __xmlattr[AttrMonth]
      end

      def xmlattr_month=(value)
        __xmlattr[AttrMonth] = value
      end

      def xmlattr_periodType
        __xmlattr[AttrPeriodType]
      end

      def xmlattr_periodType=(value)
        __xmlattr[AttrPeriodType] = value
      end

      def xmlattr_propertyId
        __xmlattr[AttrPropertyId]
      end

      def xmlattr_propertyId=(value)
        __xmlattr[AttrPropertyId] = value
      end

      def initialize(metric = [])
        @metric = metric
        @__xmlattr = {}
      end
    end

    # {}metric
    # @!attribute [rw] monthlyMetric
    #   @return [PortfolioManager::Xml::ReportMetricValuesWs]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_uom
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_dataType
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_autoGenerated
    #   @return [SOAP::SOAPBoolean]
    class Metric
      AttrAutoGenerated = XSD::QName.new(nil, "autoGenerated")
      AttrDataType = XSD::QName.new(nil, "dataType")
      AttrId = XSD::QName.new(nil, "id")
      AttrName = XSD::QName.new(nil, "name")
      AttrUom = XSD::QName.new(nil, "uom")

      attr_accessor :monthlyMetric
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_uom
        __xmlattr[AttrUom]
      end

      def xmlattr_uom=(value)
        __xmlattr[AttrUom] = value
      end

      def xmlattr_dataType
        __xmlattr[AttrDataType]
      end

      def xmlattr_dataType=(value)
        __xmlattr[AttrDataType] = value
      end

      def xmlattr_autoGenerated
        __xmlattr[AttrAutoGenerated]
      end

      def xmlattr_autoGenerated=(value)
        __xmlattr[AttrAutoGenerated] = value
      end

      def initialize(monthlyMetric = [], value = nil)
        @monthlyMetric = monthlyMetric
        @value = value
        @__xmlattr = {}
      end
    end

    # {}reportMetricValuesWs
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_month
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_year
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_periodType
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_autoGenerated
    #   @return [SOAP::SOAPBoolean]
    class ReportMetricValuesWs
      AttrAutoGenerated = XSD::QName.new(nil, "autoGenerated")
      AttrMonth = XSD::QName.new(nil, "month")
      AttrPeriodType = XSD::QName.new(nil, "periodType")
      AttrYear = XSD::QName.new(nil, "year")

      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_month
        __xmlattr[AttrMonth]
      end

      def xmlattr_month=(value)
        __xmlattr[AttrMonth] = value
      end

      def xmlattr_year
        __xmlattr[AttrYear]
      end

      def xmlattr_year=(value)
        __xmlattr[AttrYear] = value
      end

      def xmlattr_periodType
        __xmlattr[AttrPeriodType]
      end

      def xmlattr_periodType=(value)
        __xmlattr[AttrPeriodType] = value
      end

      def xmlattr_autoGenerated
        __xmlattr[AttrAutoGenerated]
      end

      def xmlattr_autoGenerated=(value)
        __xmlattr[AttrAutoGenerated] = value
      end

      def initialize(value = [])
        @value = value
        @__xmlattr = {}
      end
    end

    # {}propertyMetricsList
    class PropertyMetricsList < ::Array
    end

    # {}energyPerformanceProjectType
    # @!attribute [rw] projectName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] projectDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] propertyId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] propertyName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] implementationDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] category
    #   @return [PortfolioManager::Xml::CategoryType]
    # @!attribute [rw] categoryOtherDescription
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] investmentCost
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] estimatedSavingsCost
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] evaluationPeriod
    #   @return [PortfolioManager::Xml::EvaluationPeriodType]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class EnergyPerformanceProjectType
      attr_accessor :projectName
      attr_accessor :projectDescription
      attr_accessor :propertyId
      attr_accessor :propertyName
      attr_accessor :implementationDate
      attr_accessor :category
      attr_accessor :categoryOtherDescription
      attr_accessor :investmentCost
      attr_accessor :estimatedSavingsCost
      attr_accessor :evaluationPeriod
      attr_accessor :audit

      def initialize(projectName = nil, projectDescription = nil, propertyId = nil, propertyName = nil, implementationDate = nil, category = nil, categoryOtherDescription = nil, investmentCost = nil, estimatedSavingsCost = nil, evaluationPeriod = nil, audit = nil)
        @projectName = projectName
        @projectDescription = projectDescription
        @propertyId = propertyId
        @propertyName = propertyName
        @implementationDate = implementationDate
        @category = category
        @categoryOtherDescription = categoryOtherDescription
        @investmentCost = investmentCost
        @estimatedSavingsCost = estimatedSavingsCost
        @evaluationPeriod = evaluationPeriod
        @audit = audit
      end
    end

    # {}evaluationPeriodType
    # @!attribute [rw] preImplementationDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] postImplementationDate
    #   @return [SOAP::SOAPDate]
    class EvaluationPeriodType
      attr_accessor :preImplementationDate
      attr_accessor :postImplementationDate

      def initialize(preImplementationDate = nil, postImplementationDate = nil)
        @preImplementationDate = preImplementationDate
        @postImplementationDate = postImplementationDate
      end
    end

    # {}unAuthDesignType
    # @!attribute [rw] propertyInfo
    #   @return [PortfolioManager::Xml::PropertyDesignType]
    # @!attribute [rw] propertyUses
    #   @return [PortfolioManager::Xml::UnAuthDesignType::PropertyUses]
    # @!attribute [rw] drinkingWaterInfluentFlow
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] wasteWaterInfluentFlow
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] itSiteEnergy
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] estimatedEnergyList
    #   @return [PortfolioManager::Xml::UnAuthDesignType::EstimatedEnergyList]
    # @!attribute [rw] target
    #   @return [PortfolioManager::Xml::UnAuthDesignType::Target]
    # @!attribute [rw] internationalWeatherStationId
    #   @return [SOAP::SOAPLong]
    class UnAuthDesignType

      # inner class for member: propertyUses
      # {}propertyUses
      # @!attribute [rw] prison
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] refrigeratedWarehouse
      #   @return [PortfolioManager::Xml::RefrigeratedWarehouseType]
      # @!attribute [rw] retail
      #   @return [PortfolioManager::Xml::RetailType]
      # @!attribute [rw] hospital
      #   @return [PortfolioManager::Xml::HospitalType]
      # @!attribute [rw] medicalOffice
      #   @return [PortfolioManager::Xml::MedicalOfficeType]
      # @!attribute [rw] dataCenter
      #   @return [PortfolioManager::Xml::DataCenterType]
      # @!attribute [rw] courthouse
      #   @return [PortfolioManager::Xml::CourthouseType]
      # @!attribute [rw] singleFamilyHome
      #   @return [PortfolioManager::Xml::SingleFamilyHomeType]
      # @!attribute [rw] nonRefrigeratedWarehouse
      #   @return [PortfolioManager::Xml::NonRefrigeratedWarehouseType]
      # @!attribute [rw] multifamilyHousing
      #   @return [PortfolioManager::Xml::MultifamilyHousingType]
      # @!attribute [rw] office
      #   @return [PortfolioManager::Xml::OfficeType]
      # @!attribute [rw] wholesaleClubSupercenter
      #   @return [PortfolioManager::Xml::WholesaleClubSupercenterType]
      # @!attribute [rw] selfStorageFacility
      #   @return [PortfolioManager::Xml::SelfStorageFacilityType]
      # @!attribute [rw] seniorLivingCommunity
      #   @return [PortfolioManager::Xml::SeniorLivingCommunityType]
      # @!attribute [rw] residentialCareFacility
      #   @return [PortfolioManager::Xml::ResidentialCareFacilityType]
      # @!attribute [rw] swimmingPool
      #   @return [PortfolioManager::Xml::SwimmingPoolType]
      # @!attribute [rw] residenceHallDormitory
      #   @return [PortfolioManager::Xml::ResidenceHallDormitoryType]
      # @!attribute [rw] wastewaterTreatmentPlant
      #   @return [PortfolioManager::Xml::WastewaterTreatmentPlantType]
      # @!attribute [rw] distributionCenter
      #   @return [PortfolioManager::Xml::DistributionCenterType]
      # @!attribute [rw] worshipFacility
      #   @return [PortfolioManager::Xml::WorshipFacilityType]
      # @!attribute [rw] financialOffice
      #   @return [PortfolioManager::Xml::FinancialOfficeType]
      # @!attribute [rw] drinkingWaterTreatmentAndDistribution
      #   @return [PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType]
      # @!attribute [rw] parking
      #   @return [PortfolioManager::Xml::ParkingType]
      # @!attribute [rw] supermarket
      #   @return [PortfolioManager::Xml::SupermarketType]
      # @!attribute [rw] barracks
      #   @return [PortfolioManager::Xml::BarracksType]
      # @!attribute [rw] hotel
      #   @return [PortfolioManager::Xml::HotelType]
      # @!attribute [rw] k12School
      #   @return [PortfolioManager::Xml::K12SchoolType]
      # @!attribute [rw] bankBranch
      #   @return [PortfolioManager::Xml::BankBranchType]
      # @!attribute [rw] collegeUniversity
      #   @return [PortfolioManager::Xml::CollegeUniversityType]
      # @!attribute [rw] indoorArena
      #   @return [PortfolioManager::Xml::IndoorArenaType]
      # @!attribute [rw] otherStadium
      #   @return [PortfolioManager::Xml::OtherStadiumType]
      # @!attribute [rw] stadiumClosed
      #   @return [PortfolioManager::Xml::StadiumClosedType]
      # @!attribute [rw] stadiumOpen
      #   @return [PortfolioManager::Xml::StadiumOpenType]
      # @!attribute [rw] manufacturingIndustrialPlant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] ambulatorySurgicalCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] bowlingAlley
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherPublicServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherLodgingResidential
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] casino
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] personalServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] mailingCenterPostOffice
      #   @return [PortfolioManager::Xml::MailingCenterPostOfficeType]
      # @!attribute [rw] library
      #   @return [PortfolioManager::Xml::LibraryType]
      # @!attribute [rw] otherSpecialityHospital
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] conventionCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] veterinaryOffice
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] urgentCareClinicOtherOutpatient
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] energyPowerStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] barNightclub
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherUtility
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] zoo
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] vehicleDealership
      #   @return [PortfolioManager::Xml::VehicleDealershipType]
      # @!attribute [rw] museum
      #   @return [PortfolioManager::Xml::MuseumType]
      # @!attribute [rw] otherRecreation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherRestaurantBar
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] lifestyleCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] policeStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] preschoolDaycare
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] raceTrack
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fastFoodRestaurant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] laboratory
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] convenienceStoreWithoutGasStation
      #   @return [PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType]
      # @!attribute [rw] repairServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherTechnologyScience
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fireStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] foodSales
      #   @return [PortfolioManager::Xml::FoodSalesType]
      # @!attribute [rw] performingArts
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] outpatientRehabilitationPhysicalTherapy
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] stripMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] rollerRink
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherEducation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fitnessCenterHealthClubGym
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] aquarium
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] foodService
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] restaurant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] enclosedMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] iceCurlingRink
      #   @return [PortfolioManager::Xml::IceCurlingRinkType]
      # @!attribute [rw] adultEducation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherEntertainmentPublicAssembly
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] movieTheater
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] transportationTerminalStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] vocationalSchool
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] socialMeetingHall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] convenienceStoreWithGasStation
      #   @return [PortfolioManager::Xml::ConvenienceStoreWithGasStationType]
      # @!attribute [rw] other
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] electricVehicleChargingStation
      #   @return [PortfolioManager::Xml::EvChargingStationType]
      class PropertyUses
        attr_accessor :prison
        attr_accessor :refrigeratedWarehouse
        attr_accessor :retail
        attr_accessor :hospital
        attr_accessor :medicalOffice
        attr_accessor :dataCenter
        attr_accessor :courthouse
        attr_accessor :singleFamilyHome
        attr_accessor :nonRefrigeratedWarehouse
        attr_accessor :multifamilyHousing
        attr_accessor :office
        attr_accessor :wholesaleClubSupercenter
        attr_accessor :selfStorageFacility
        attr_accessor :seniorLivingCommunity
        attr_accessor :residentialCareFacility
        attr_accessor :swimmingPool
        attr_accessor :residenceHallDormitory
        attr_accessor :wastewaterTreatmentPlant
        attr_accessor :distributionCenter
        attr_accessor :worshipFacility
        attr_accessor :financialOffice
        attr_accessor :drinkingWaterTreatmentAndDistribution
        attr_accessor :parking
        attr_accessor :supermarket
        attr_accessor :barracks
        attr_accessor :hotel
        attr_accessor :k12School
        attr_accessor :bankBranch
        attr_accessor :collegeUniversity
        attr_accessor :indoorArena
        attr_accessor :otherStadium
        attr_accessor :stadiumClosed
        attr_accessor :stadiumOpen
        attr_accessor :manufacturingIndustrialPlant
        attr_accessor :ambulatorySurgicalCenter
        attr_accessor :bowlingAlley
        attr_accessor :otherPublicServices
        attr_accessor :otherLodgingResidential
        attr_accessor :casino
        attr_accessor :personalServices
        attr_accessor :mailingCenterPostOffice
        attr_accessor :library
        attr_accessor :otherSpecialityHospital
        attr_accessor :conventionCenter
        attr_accessor :veterinaryOffice
        attr_accessor :urgentCareClinicOtherOutpatient
        attr_accessor :energyPowerStation
        attr_accessor :otherServices
        attr_accessor :barNightclub
        attr_accessor :otherUtility
        attr_accessor :zoo
        attr_accessor :vehicleDealership
        attr_accessor :museum
        attr_accessor :otherRecreation
        attr_accessor :otherRestaurantBar
        attr_accessor :lifestyleCenter
        attr_accessor :policeStation
        attr_accessor :preschoolDaycare
        attr_accessor :raceTrack
        attr_accessor :fastFoodRestaurant
        attr_accessor :laboratory
        attr_accessor :convenienceStoreWithoutGasStation
        attr_accessor :repairServices
        attr_accessor :otherTechnologyScience
        attr_accessor :fireStation
        attr_accessor :foodSales
        attr_accessor :performingArts
        attr_accessor :outpatientRehabilitationPhysicalTherapy
        attr_accessor :stripMall
        attr_accessor :rollerRink
        attr_accessor :otherEducation
        attr_accessor :fitnessCenterHealthClubGym
        attr_accessor :aquarium
        attr_accessor :foodService
        attr_accessor :restaurant
        attr_accessor :enclosedMall
        attr_accessor :iceCurlingRink
        attr_accessor :adultEducation
        attr_accessor :otherEntertainmentPublicAssembly
        attr_accessor :movieTheater
        attr_accessor :transportationTerminalStation
        attr_accessor :vocationalSchool
        attr_accessor :socialMeetingHall
        attr_accessor :otherMall
        attr_accessor :convenienceStoreWithGasStation
        attr_accessor :other
        attr_accessor :electricVehicleChargingStation

        def initialize(prison = [], refrigeratedWarehouse = [], retail = [], hospital = [], medicalOffice = [], dataCenter = [], courthouse = [], singleFamilyHome = [], nonRefrigeratedWarehouse = [], multifamilyHousing = [], office = [], wholesaleClubSupercenter = [], selfStorageFacility = [], seniorLivingCommunity = [], residentialCareFacility = [], swimmingPool = [], residenceHallDormitory = [], wastewaterTreatmentPlant = [], distributionCenter = [], worshipFacility = [], financialOffice = [], drinkingWaterTreatmentAndDistribution = [], parking = [], supermarket = [], barracks = [], hotel = [], k12School = [], bankBranch = [], collegeUniversity = [], indoorArena = [], otherStadium = [], stadiumClosed = [], stadiumOpen = [], manufacturingIndustrialPlant = [], ambulatorySurgicalCenter = [], bowlingAlley = [], otherPublicServices = [], otherLodgingResidential = [], casino = [], personalServices = [], mailingCenterPostOffice = [], library = [], otherSpecialityHospital = [], conventionCenter = [], veterinaryOffice = [], urgentCareClinicOtherOutpatient = [], energyPowerStation = [], otherServices = [], barNightclub = [], otherUtility = [], zoo = [], vehicleDealership = [], museum = [], otherRecreation = [], otherRestaurantBar = [], lifestyleCenter = [], policeStation = [], preschoolDaycare = [], raceTrack = [], fastFoodRestaurant = [], laboratory = [], convenienceStoreWithoutGasStation = [], repairServices = [], otherTechnologyScience = [], fireStation = [], foodSales = [], performingArts = [], outpatientRehabilitationPhysicalTherapy = [], stripMall = [], rollerRink = [], otherEducation = [], fitnessCenterHealthClubGym = [], aquarium = [], foodService = [], restaurant = [], enclosedMall = [], iceCurlingRink = [], adultEducation = [], otherEntertainmentPublicAssembly = [], movieTheater = [], transportationTerminalStation = [], vocationalSchool = [], socialMeetingHall = [], otherMall = [], convenienceStoreWithGasStation = [], other = [], electricVehicleChargingStation = [])
          @prison = prison
          @refrigeratedWarehouse = refrigeratedWarehouse
          @retail = retail
          @hospital = hospital
          @medicalOffice = medicalOffice
          @dataCenter = dataCenter
          @courthouse = courthouse
          @singleFamilyHome = singleFamilyHome
          @nonRefrigeratedWarehouse = nonRefrigeratedWarehouse
          @multifamilyHousing = multifamilyHousing
          @office = office
          @wholesaleClubSupercenter = wholesaleClubSupercenter
          @selfStorageFacility = selfStorageFacility
          @seniorLivingCommunity = seniorLivingCommunity
          @residentialCareFacility = residentialCareFacility
          @swimmingPool = swimmingPool
          @residenceHallDormitory = residenceHallDormitory
          @wastewaterTreatmentPlant = wastewaterTreatmentPlant
          @distributionCenter = distributionCenter
          @worshipFacility = worshipFacility
          @financialOffice = financialOffice
          @drinkingWaterTreatmentAndDistribution = drinkingWaterTreatmentAndDistribution
          @parking = parking
          @supermarket = supermarket
          @barracks = barracks
          @hotel = hotel
          @k12School = k12School
          @bankBranch = bankBranch
          @collegeUniversity = collegeUniversity
          @indoorArena = indoorArena
          @otherStadium = otherStadium
          @stadiumClosed = stadiumClosed
          @stadiumOpen = stadiumOpen
          @manufacturingIndustrialPlant = manufacturingIndustrialPlant
          @ambulatorySurgicalCenter = ambulatorySurgicalCenter
          @bowlingAlley = bowlingAlley
          @otherPublicServices = otherPublicServices
          @otherLodgingResidential = otherLodgingResidential
          @casino = casino
          @personalServices = personalServices
          @mailingCenterPostOffice = mailingCenterPostOffice
          @library = library
          @otherSpecialityHospital = otherSpecialityHospital
          @conventionCenter = conventionCenter
          @veterinaryOffice = veterinaryOffice
          @urgentCareClinicOtherOutpatient = urgentCareClinicOtherOutpatient
          @energyPowerStation = energyPowerStation
          @otherServices = otherServices
          @barNightclub = barNightclub
          @otherUtility = otherUtility
          @zoo = zoo
          @vehicleDealership = vehicleDealership
          @museum = museum
          @otherRecreation = otherRecreation
          @otherRestaurantBar = otherRestaurantBar
          @lifestyleCenter = lifestyleCenter
          @policeStation = policeStation
          @preschoolDaycare = preschoolDaycare
          @raceTrack = raceTrack
          @fastFoodRestaurant = fastFoodRestaurant
          @laboratory = laboratory
          @convenienceStoreWithoutGasStation = convenienceStoreWithoutGasStation
          @repairServices = repairServices
          @otherTechnologyScience = otherTechnologyScience
          @fireStation = fireStation
          @foodSales = foodSales
          @performingArts = performingArts
          @outpatientRehabilitationPhysicalTherapy = outpatientRehabilitationPhysicalTherapy
          @stripMall = stripMall
          @rollerRink = rollerRink
          @otherEducation = otherEducation
          @fitnessCenterHealthClubGym = fitnessCenterHealthClubGym
          @aquarium = aquarium
          @foodService = foodService
          @restaurant = restaurant
          @enclosedMall = enclosedMall
          @iceCurlingRink = iceCurlingRink
          @adultEducation = adultEducation
          @otherEntertainmentPublicAssembly = otherEntertainmentPublicAssembly
          @movieTheater = movieTheater
          @transportationTerminalStation = transportationTerminalStation
          @vocationalSchool = vocationalSchool
          @socialMeetingHall = socialMeetingHall
          @otherMall = otherMall
          @convenienceStoreWithGasStation = convenienceStoreWithGasStation
          @other = other
          @electricVehicleChargingStation = electricVehicleChargingStation
        end
      end

      # inner class for member: estimatedEnergyList
      # {}estimatedEnergyList
      # @!attribute [rw] entries
      #   @return [PortfolioManager::Xml::EstimatedEnergyListType]
      class EstimatedEnergyList
        attr_accessor :entries

        def initialize(entries = nil)
          @entries = entries
        end
      end

      # inner class for member: target
      # {}target
      # @!attribute [rw] targetTypeScore
      #   @return [PortfolioManager::Xml::TargetTypeScoreType]
      # @!attribute [rw] targetTypePercentage
      #   @return [PortfolioManager::Xml::TargetTypePercentageType]
      class Target
        attr_accessor :targetTypeScore
        attr_accessor :targetTypePercentage

        def initialize(targetTypeScore = nil, targetTypePercentage = nil)
          @targetTypeScore = targetTypeScore
          @targetTypePercentage = targetTypePercentage
        end
      end

      attr_accessor :propertyInfo
      attr_accessor :propertyUses
      attr_accessor :drinkingWaterInfluentFlow
      attr_accessor :wasteWaterInfluentFlow
      attr_accessor :itSiteEnergy
      attr_accessor :estimatedEnergyList
      attr_accessor :target
      attr_accessor :internationalWeatherStationId

      def initialize(propertyInfo = nil, propertyUses = nil, drinkingWaterInfluentFlow = nil, wasteWaterInfluentFlow = nil, itSiteEnergy = nil, estimatedEnergyList = nil, target = nil, internationalWeatherStationId = nil)
        @propertyInfo = propertyInfo
        @propertyUses = propertyUses
        @drinkingWaterInfluentFlow = drinkingWaterInfluentFlow
        @wasteWaterInfluentFlow = wasteWaterInfluentFlow
        @itSiteEnergy = itSiteEnergy
        @estimatedEnergyList = estimatedEnergyList
        @target = target
        @internationalWeatherStationId = internationalWeatherStationId
      end
    end

    # {}refrigeratedWarehouseType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::RefrigeratedWarehouseType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class RefrigeratedWarehouseType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentUsedForColdStorage
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] clearHeight
      #   @return [PortfolioManager::Xml::ClearHeightUnitsType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :percentUsedForColdStorage
        attr_accessor :clearHeight
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, percentUsedForColdStorage = nil, clearHeight = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @percentUsedForColdStorage = percentUsedForColdStorage
          @clearHeight = clearHeight
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}retailType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::RetailType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class RetailType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] singleStore
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] exteriorEntranceToThePublic
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :numberOfCashRegisters
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :singleStore
        attr_accessor :exteriorEntranceToThePublic
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits
        attr_accessor :cookingFacilities

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, numberOfCashRegisters = nil, numberOfWalkInRefrigerationUnits = nil, numberOfOpenClosedRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil, singleStore = nil, exteriorEntranceToThePublic = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil, cookingFacilities = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @numberOfCashRegisters = numberOfCashRegisters
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @singleStore = singleStore
          @exteriorEntranceToThePublic = exteriorEntranceToThePublic
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
          @cookingFacilities = cookingFacilities
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}hospitalType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::HospitalType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class HospitalType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] grossFloorAreaUsedForFoodPreparation
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] licensedBedCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfStaffedBeds
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfFTEWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfMriMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfSterilizationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] onSiteLaundryFacility
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] hasLaboratory
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] isTertiaryCare
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] maximumNumberOfFloors
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] ownedBy
      #   @return [PortfolioManager::Xml::OwnedByType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :grossFloorAreaUsedForFoodPreparation
        attr_accessor :licensedBedCapacity
        attr_accessor :numberOfStaffedBeds
        attr_accessor :numberOfFTEWorkers
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfMriMachines
        attr_accessor :numberOfSterilizationUnits
        attr_accessor :onSiteLaundryFacility
        attr_accessor :hasLaboratory
        attr_accessor :isTertiaryCare
        attr_accessor :maximumNumberOfFloors
        attr_accessor :ownedBy
        attr_accessor :percentHeated
        attr_accessor :percentCooled

        def initialize(totalGrossFloorArea = nil, grossFloorAreaUsedForFoodPreparation = nil, licensedBedCapacity = nil, numberOfStaffedBeds = nil, numberOfFTEWorkers = nil, numberOfWorkers = nil, numberOfMriMachines = nil, numberOfSterilizationUnits = nil, onSiteLaundryFacility = nil, hasLaboratory = nil, isTertiaryCare = nil, maximumNumberOfFloors = nil, ownedBy = nil, percentHeated = nil, percentCooled = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @grossFloorAreaUsedForFoodPreparation = grossFloorAreaUsedForFoodPreparation
          @licensedBedCapacity = licensedBedCapacity
          @numberOfStaffedBeds = numberOfStaffedBeds
          @numberOfFTEWorkers = numberOfFTEWorkers
          @numberOfWorkers = numberOfWorkers
          @numberOfMriMachines = numberOfMriMachines
          @numberOfSterilizationUnits = numberOfSterilizationUnits
          @onSiteLaundryFacility = onSiteLaundryFacility
          @hasLaboratory = hasLaboratory
          @isTertiaryCare = isTertiaryCare
          @maximumNumberOfFloors = maximumNumberOfFloors
          @ownedBy = ownedBy
          @percentHeated = percentHeated
          @percentCooled = percentCooled
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}medicalOfficeType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::MedicalOfficeType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class MedicalOfficeType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfSurgicalOperatingBeds
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] surgeryCenterFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfMriMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfWorkers
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfSurgicalOperatingBeds
        attr_accessor :surgeryCenterFloorArea
        attr_accessor :numberOfMriMachines
        attr_accessor :numberOfComputers

        def initialize(totalGrossFloorArea = nil, numberOfWorkers = nil, percentCooled = nil, percentHeated = nil, weeklyOperatingHours = nil, numberOfSurgicalOperatingBeds = nil, surgeryCenterFloorArea = nil, numberOfMriMachines = nil, numberOfComputers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfWorkers = numberOfWorkers
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfSurgicalOperatingBeds = numberOfSurgicalOperatingBeds
          @surgeryCenterFloorArea = surgeryCenterFloorArea
          @numberOfMriMachines = numberOfMriMachines
          @numberOfComputers = numberOfComputers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}dataCenterType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::DataCenterType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class DataCenterType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] estimatesApplied
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] coolingEquipmentRedundancy
      #   @return [PortfolioManager::Xml::CoolingEquipmentRedundancyType]
      # @!attribute [rw] itEnergyMeterConfiguration
      #   @return [PortfolioManager::Xml::ItEnergyConfigurationType]
      # @!attribute [rw] upsSystemRedundancy
      #   @return [PortfolioManager::Xml::UpsSystemRedundancyType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :estimatesApplied
        attr_accessor :coolingEquipmentRedundancy
        attr_accessor :itEnergyMeterConfiguration
        attr_accessor :upsSystemRedundancy

        def initialize(totalGrossFloorArea = nil, estimatesApplied = nil, coolingEquipmentRedundancy = nil, itEnergyMeterConfiguration = nil, upsSystemRedundancy = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @estimatesApplied = estimatesApplied
          @coolingEquipmentRedundancy = coolingEquipmentRedundancy
          @itEnergyMeterConfiguration = itEnergyMeterConfiguration
          @upsSystemRedundancy = upsSystemRedundancy
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}courthouseType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::CourthouseType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class CourthouseType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentOfficeCooled
      #   @return [PortfolioManager::Xml::PercentOfficeCooledType]
      # @!attribute [rw] percentOfficeHeated
      #   @return [PortfolioManager::Xml::PercentOfficeHeatedType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfComputers
        attr_accessor :percentOfficeCooled
        attr_accessor :percentOfficeHeated
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers

        def initialize(totalGrossFloorArea = nil, numberOfComputers = nil, percentOfficeCooled = nil, percentOfficeHeated = nil, weeklyOperatingHours = nil, numberOfWorkers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfComputers = numberOfComputers
          @percentOfficeCooled = percentOfficeCooled
          @percentOfficeHeated = percentOfficeHeated
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}singleFamilyHomeType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::SingleFamilyHomeType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class SingleFamilyHomeType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfBedrooms
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfPeople
      #   @return [PortfolioManager::Xml::UseIntegerType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfBedrooms
        attr_accessor :numberOfPeople

        def initialize(totalGrossFloorArea = nil, numberOfBedrooms = nil, numberOfPeople = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfBedrooms = numberOfBedrooms
          @numberOfPeople = numberOfPeople
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}nonRefrigeratedWarehouseType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::NonRefrigeratedWarehouseType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class NonRefrigeratedWarehouseType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentUsedForColdStorage
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] clearHeight
      #   @return [PortfolioManager::Xml::ClearHeightUnitsType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :percentUsedForColdStorage
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :clearHeight
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, percentUsedForColdStorage = nil, numberOfWalkInRefrigerationUnits = nil, clearHeight = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @percentUsedForColdStorage = percentUsedForColdStorage
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @clearHeight = clearHeight
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}multifamilyHousingType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::MultifamilyHousingType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class MultifamilyHousingType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfResidentialLivingUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfBedrooms
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfResidentialLivingUnitsMidRiseSetting
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfLaundryHookupsInAllUnits
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfLaundryHookupsInCommonArea
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfResidentialLivingUnitsLowRiseSetting
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] numberOfResidentialLivingUnitsHighRiseSetting
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] residentPopulation
      #   @return [PortfolioManager::Xml::ResidentPopulationType]
      # @!attribute [rw] governmentSubsidizedHousing
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] commonEntrance
      #   @return [PortfolioManager::Xml::UseYesNoType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfResidentialLivingUnits
        attr_accessor :numberOfBedrooms
        attr_accessor :numberOfResidentialLivingUnitsMidRiseSetting
        attr_accessor :numberOfLaundryHookupsInAllUnits
        attr_accessor :numberOfLaundryHookupsInCommonArea
        attr_accessor :numberOfResidentialLivingUnitsLowRiseSetting
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :numberOfResidentialLivingUnitsHighRiseSetting
        attr_accessor :residentPopulation
        attr_accessor :governmentSubsidizedHousing
        attr_accessor :commonEntrance

        def initialize(totalGrossFloorArea = nil, numberOfResidentialLivingUnits = nil, numberOfBedrooms = nil, numberOfResidentialLivingUnitsMidRiseSetting = nil, numberOfLaundryHookupsInAllUnits = nil, numberOfLaundryHookupsInCommonArea = nil, numberOfResidentialLivingUnitsLowRiseSetting = nil, percentHeated = nil, percentCooled = nil, numberOfResidentialLivingUnitsHighRiseSetting = nil, residentPopulation = nil, governmentSubsidizedHousing = nil, commonEntrance = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfResidentialLivingUnits = numberOfResidentialLivingUnits
          @numberOfBedrooms = numberOfBedrooms
          @numberOfResidentialLivingUnitsMidRiseSetting = numberOfResidentialLivingUnitsMidRiseSetting
          @numberOfLaundryHookupsInAllUnits = numberOfLaundryHookupsInAllUnits
          @numberOfLaundryHookupsInCommonArea = numberOfLaundryHookupsInCommonArea
          @numberOfResidentialLivingUnitsLowRiseSetting = numberOfResidentialLivingUnitsLowRiseSetting
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @numberOfResidentialLivingUnitsHighRiseSetting = numberOfResidentialLivingUnitsHighRiseSetting
          @residentPopulation = residentPopulation
          @governmentSubsidizedHousing = governmentSubsidizedHousing
          @commonEntrance = commonEntrance
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}officeType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::OfficeType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class OfficeType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentOfficeCooled
      #   @return [PortfolioManager::Xml::PercentOfficeCooledType]
      # @!attribute [rw] percentOfficeHeated
      #   @return [PortfolioManager::Xml::PercentOfficeHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :percentOfficeCooled
        attr_accessor :percentOfficeHeated

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, percentOfficeCooled = nil, percentOfficeHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @percentOfficeCooled = percentOfficeCooled
          @percentOfficeHeated = percentOfficeHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}wholesaleClubSupercenterType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::WholesaleClubSupercenterType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class WholesaleClubSupercenterType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] exteriorEntranceToThePublic
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] singleStore
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :exteriorEntranceToThePublic
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfCashRegisters
        attr_accessor :numberOfComputers
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :singleStore
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits
        attr_accessor :cookingFacilities

        def initialize(totalGrossFloorArea = nil, exteriorEntranceToThePublic = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfCashRegisters = nil, numberOfComputers = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfWalkInRefrigerationUnits = nil, percentHeated = nil, percentCooled = nil, singleStore = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil, cookingFacilities = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @exteriorEntranceToThePublic = exteriorEntranceToThePublic
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfCashRegisters = numberOfCashRegisters
          @numberOfComputers = numberOfComputers
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @singleStore = singleStore
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
          @cookingFacilities = cookingFacilities
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}seniorLivingCommunityType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::SeniorLivingCommunityType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class SeniorLivingCommunityType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfResidentialLivingUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] averageNumberOfResidents
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] maximumResidentCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCommercialRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCommercialWashingMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfResidentialWashingMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfResidentialLiftSystems
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] licensedBedCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfResidentialLivingUnits
        attr_accessor :averageNumberOfResidents
        attr_accessor :maximumResidentCapacity
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :numberOfCommercialRefrigerationUnits
        attr_accessor :numberOfCommercialWashingMachines
        attr_accessor :numberOfResidentialWashingMachines
        attr_accessor :numberOfResidentialLiftSystems
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :licensedBedCapacity

        def initialize(totalGrossFloorArea = nil, numberOfResidentialLivingUnits = nil, averageNumberOfResidents = nil, maximumResidentCapacity = nil, numberOfWorkers = nil, numberOfComputers = nil, numberOfCommercialRefrigerationUnits = nil, numberOfCommercialWashingMachines = nil, numberOfResidentialWashingMachines = nil, numberOfResidentialLiftSystems = nil, percentCooled = nil, percentHeated = nil, licensedBedCapacity = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfResidentialLivingUnits = numberOfResidentialLivingUnits
          @averageNumberOfResidents = averageNumberOfResidents
          @maximumResidentCapacity = maximumResidentCapacity
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @numberOfCommercialRefrigerationUnits = numberOfCommercialRefrigerationUnits
          @numberOfCommercialWashingMachines = numberOfCommercialWashingMachines
          @numberOfResidentialWashingMachines = numberOfResidentialWashingMachines
          @numberOfResidentialLiftSystems = numberOfResidentialLiftSystems
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @licensedBedCapacity = licensedBedCapacity
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}residentialCareFacilityType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::ResidentialCareFacilityType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ResidentialCareFacilityType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfResidentialLivingUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] averageNumberOfResidents
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] maximumResidentCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCommercialRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCommercialWashingMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfResidentialWashingMachines
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfResidentialLiftSystems
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] licensedBedCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfResidentialLivingUnits
        attr_accessor :averageNumberOfResidents
        attr_accessor :maximumResidentCapacity
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :numberOfCommercialRefrigerationUnits
        attr_accessor :numberOfCommercialWashingMachines
        attr_accessor :numberOfResidentialWashingMachines
        attr_accessor :numberOfResidentialLiftSystems
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :licensedBedCapacity

        def initialize(totalGrossFloorArea = nil, numberOfResidentialLivingUnits = nil, averageNumberOfResidents = nil, maximumResidentCapacity = nil, numberOfWorkers = nil, numberOfComputers = nil, numberOfCommercialRefrigerationUnits = nil, numberOfCommercialWashingMachines = nil, numberOfResidentialWashingMachines = nil, numberOfResidentialLiftSystems = nil, percentCooled = nil, percentHeated = nil, licensedBedCapacity = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfResidentialLivingUnits = numberOfResidentialLivingUnits
          @averageNumberOfResidents = averageNumberOfResidents
          @maximumResidentCapacity = maximumResidentCapacity
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @numberOfCommercialRefrigerationUnits = numberOfCommercialRefrigerationUnits
          @numberOfCommercialWashingMachines = numberOfCommercialWashingMachines
          @numberOfResidentialWashingMachines = numberOfResidentialWashingMachines
          @numberOfResidentialLiftSystems = numberOfResidentialLiftSystems
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @licensedBedCapacity = licensedBedCapacity
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}swimmingPoolType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::SwimmingPoolType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class SwimmingPoolType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] poolSize
      #   @return [PortfolioManager::Xml::PoolSizeType]
      # @!attribute [rw] poolLocation
      #   @return [PortfolioManager::Xml::PoolType]
      # @!attribute [rw] monthsInUse
      #   @return [PortfolioManager::Xml::MonthsInUseType]
      class UseDetails
        attr_accessor :poolSize
        attr_accessor :poolLocation
        attr_accessor :monthsInUse

        def initialize(poolSize = nil, poolLocation = nil, monthsInUse = nil)
          @poolSize = poolSize
          @poolLocation = poolLocation
          @monthsInUse = monthsInUse
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}residenceHallDormitoryType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::ResidenceHallDormitoryType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ResidenceHallDormitoryType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfRooms
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] hasComputerLab
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] hasDiningHall
      #   @return [PortfolioManager::Xml::UseYesNoType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfRooms
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :hasComputerLab
        attr_accessor :hasDiningHall

        def initialize(totalGrossFloorArea = nil, numberOfRooms = nil, percentHeated = nil, percentCooled = nil, hasComputerLab = nil, hasDiningHall = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfRooms = numberOfRooms
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @hasComputerLab = hasComputerLab
          @hasDiningHall = hasDiningHall
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}wastewaterTreatmentPlantType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::WastewaterTreatmentPlantType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class WastewaterTreatmentPlantType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] averageInfluentBiologicalOxygenDemand
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] averageEffluentBiologicalOxygenDemand
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] plantDesignFlowRate
      #   @return [PortfolioManager::Xml::PlantDesignFlowRateType]
      # @!attribute [rw] fixedFilmTrickleFiltrationProcess
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] nutrientRemoval
      #   @return [PortfolioManager::Xml::UseYesNoType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :averageInfluentBiologicalOxygenDemand
        attr_accessor :averageEffluentBiologicalOxygenDemand
        attr_accessor :plantDesignFlowRate
        attr_accessor :fixedFilmTrickleFiltrationProcess
        attr_accessor :nutrientRemoval

        def initialize(totalGrossFloorArea = nil, averageInfluentBiologicalOxygenDemand = nil, averageEffluentBiologicalOxygenDemand = nil, plantDesignFlowRate = nil, fixedFilmTrickleFiltrationProcess = nil, nutrientRemoval = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @averageInfluentBiologicalOxygenDemand = averageInfluentBiologicalOxygenDemand
          @averageEffluentBiologicalOxygenDemand = averageEffluentBiologicalOxygenDemand
          @plantDesignFlowRate = plantDesignFlowRate
          @fixedFilmTrickleFiltrationProcess = fixedFilmTrickleFiltrationProcess
          @nutrientRemoval = nutrientRemoval
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}distributionCenterType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::DistributionCenterType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class DistributionCenterType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentUsedForColdStorage
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] clearHeight
      #   @return [PortfolioManager::Xml::ClearHeightUnitsType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :percentUsedForColdStorage
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :clearHeight
        attr_accessor :percentHeated
        attr_accessor :percentCooled

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, percentUsedForColdStorage = nil, numberOfWalkInRefrigerationUnits = nil, clearHeight = nil, percentHeated = nil, percentCooled = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @percentUsedForColdStorage = percentUsedForColdStorage
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @clearHeight = clearHeight
          @percentHeated = percentHeated
          @percentCooled = percentCooled
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}worshipFacilityType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::WorshipFacilityType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class WorshipFacilityType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] seatingCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] ceilingHeight
      #   @return [PortfolioManager::Xml::CeilingHeightUnitsType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] grossFloorAreaUsedForFoodPreparation
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfWeekdaysOpen
      #   @return [PortfolioManager::Xml::NumberOfWeekdaysType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCommercialRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :seatingCapacity
        attr_accessor :ceilingHeight
        attr_accessor :cookingFacilities
        attr_accessor :grossFloorAreaUsedForFoodPreparation
        attr_accessor :numberOfWeekdaysOpen
        attr_accessor :numberOfComputers
        attr_accessor :numberOfCommercialRefrigerationUnits
        attr_accessor :percentHeated
        attr_accessor :percentCooled

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, seatingCapacity = nil, ceilingHeight = nil, cookingFacilities = nil, grossFloorAreaUsedForFoodPreparation = nil, numberOfWeekdaysOpen = nil, numberOfComputers = nil, numberOfCommercialRefrigerationUnits = nil, percentHeated = nil, percentCooled = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @seatingCapacity = seatingCapacity
          @ceilingHeight = ceilingHeight
          @cookingFacilities = cookingFacilities
          @grossFloorAreaUsedForFoodPreparation = grossFloorAreaUsedForFoodPreparation
          @numberOfWeekdaysOpen = numberOfWeekdaysOpen
          @numberOfComputers = numberOfComputers
          @numberOfCommercialRefrigerationUnits = numberOfCommercialRefrigerationUnits
          @percentHeated = percentHeated
          @percentCooled = percentCooled
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}financialOfficeType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::FinancialOfficeType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class FinancialOfficeType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentOfficeCooled
      #   @return [PortfolioManager::Xml::PercentOfficeCooledType]
      # @!attribute [rw] percentOfficeHeated
      #   @return [PortfolioManager::Xml::PercentOfficeHeatedType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfComputers
        attr_accessor :percentOfficeCooled
        attr_accessor :percentOfficeHeated
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers

        def initialize(totalGrossFloorArea = nil, numberOfComputers = nil, percentOfficeCooled = nil, percentOfficeHeated = nil, weeklyOperatingHours = nil, numberOfWorkers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfComputers = numberOfComputers
          @percentOfficeCooled = percentOfficeCooled
          @percentOfficeHeated = percentOfficeHeated
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}drinkingWaterTreatmentAndDistributionType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class DrinkingWaterTreatmentAndDistributionType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      class UseDetails
        attr_accessor :totalGrossFloorArea

        def initialize(totalGrossFloorArea = nil)
          @totalGrossFloorArea = totalGrossFloorArea
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}parkingType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::ParkingType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ParkingType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] supplementalHeating
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] openFootage
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] completelyEnclosedFootage
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] partiallyEnclosedFootage
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      class UseDetails
        attr_accessor :supplementalHeating
        attr_accessor :openFootage
        attr_accessor :completelyEnclosedFootage
        attr_accessor :partiallyEnclosedFootage

        def initialize(supplementalHeating = nil, openFootage = nil, completelyEnclosedFootage = nil, partiallyEnclosedFootage = nil)
          @supplementalHeating = supplementalHeating
          @openFootage = openFootage
          @completelyEnclosedFootage = completelyEnclosedFootage
          @partiallyEnclosedFootage = partiallyEnclosedFootage
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}supermarketType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::SupermarketType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class SupermarketType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :cookingFacilities
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :numberOfCashRegisters
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, cookingFacilities = nil, numberOfWalkInRefrigerationUnits = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfCashRegisters = nil, percentCooled = nil, percentHeated = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @cookingFacilities = cookingFacilities
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @numberOfCashRegisters = numberOfCashRegisters
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}foodSalesType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::FoodSalesType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class FoodSalesType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :cookingFacilities
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :numberOfCashRegisters
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, cookingFacilities = nil, numberOfWalkInRefrigerationUnits = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfCashRegisters = nil, percentCooled = nil, percentHeated = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @cookingFacilities = cookingFacilities
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @numberOfCashRegisters = numberOfCashRegisters
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}convenienceStoreWithGasStationType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::ConvenienceStoreWithGasStationType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ConvenienceStoreWithGasStationType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      # @!attribute [rw] numberOfFTEWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCookingEquipmentUnits
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfWarmingHeatingEquipmentUnits
      #   @return [PortfolioManager::Xml::UseIntegerType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :cookingFacilities
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :numberOfCashRegisters
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits
        attr_accessor :numberOfFTEWorkers
        attr_accessor :numberOfCookingEquipmentUnits
        attr_accessor :numberOfWarmingHeatingEquipmentUnits

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, cookingFacilities = nil, numberOfWalkInRefrigerationUnits = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfCashRegisters = nil, percentCooled = nil, percentHeated = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil, numberOfFTEWorkers = nil, numberOfCookingEquipmentUnits = nil, numberOfWarmingHeatingEquipmentUnits = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @cookingFacilities = cookingFacilities
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @numberOfCashRegisters = numberOfCashRegisters
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
          @numberOfFTEWorkers = numberOfFTEWorkers
          @numberOfCookingEquipmentUnits = numberOfCookingEquipmentUnits
          @numberOfWarmingHeatingEquipmentUnits = numberOfWarmingHeatingEquipmentUnits
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}convenienceStoreWithoutGasStationType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ConvenienceStoreWithoutGasStationType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCashRegisters
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
      #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
      # @!attribute [rw] numberOfFTEWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCookingEquipmentUnits
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfWarmingHeatingEquipmentUnits
      #   @return [PortfolioManager::Xml::UseIntegerType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :cookingFacilities
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :numberOfOpenClosedRefrigerationUnits
        attr_accessor :numberOfCashRegisters
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :areaOfAllWalkInRefrigerationUnits
        attr_accessor :lengthOfAllOpenClosedRefrigerationUnits
        attr_accessor :numberOfFTEWorkers
        attr_accessor :numberOfCookingEquipmentUnits
        attr_accessor :numberOfWarmingHeatingEquipmentUnits

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, cookingFacilities = nil, numberOfWalkInRefrigerationUnits = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfCashRegisters = nil, percentCooled = nil, percentHeated = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil, numberOfFTEWorkers = nil, numberOfCookingEquipmentUnits = nil, numberOfWarmingHeatingEquipmentUnits = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @cookingFacilities = cookingFacilities
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
          @numberOfCashRegisters = numberOfCashRegisters
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
          @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
          @numberOfFTEWorkers = numberOfFTEWorkers
          @numberOfCookingEquipmentUnits = numberOfCookingEquipmentUnits
          @numberOfWarmingHeatingEquipmentUnits = numberOfWarmingHeatingEquipmentUnits
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}barracksType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::BarracksType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class BarracksType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] hasComputerLab
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] hasDiningHall
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfRooms
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :hasComputerLab
        attr_accessor :hasDiningHall
        attr_accessor :numberOfRooms
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, hasComputerLab = nil, hasDiningHall = nil, numberOfRooms = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @hasComputerLab = hasComputerLab
          @hasDiningHall = hasDiningHall
          @numberOfRooms = numberOfRooms
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}hotelType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::HotelType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class HotelType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] fullServiceSpaFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] gymCenterFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] hoursPerDayGuestsOnsite
      #   @return [PortfolioManager::Xml::HoursPerDayGuestsOnsiteType]
      # @!attribute [rw] numberOfCommercialRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfGuestMealsServedPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfHotelRooms
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] laundryFacility
      #   @return [PortfolioManager::Xml::OnsiteLaundryType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] amountOfLaundryProcessedAnnually
      #   @return [PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] grossFloorAreaUsedForFoodPreparation
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] grossFloorAreaHotelConferenceSpace
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :fullServiceSpaFloorArea
        attr_accessor :gymCenterFloorArea
        attr_accessor :hoursPerDayGuestsOnsite
        attr_accessor :numberOfCommercialRefrigerationUnits
        attr_accessor :numberOfGuestMealsServedPerYear
        attr_accessor :numberOfHotelRooms
        attr_accessor :laundryFacility
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :cookingFacilities
        attr_accessor :amountOfLaundryProcessedAnnually
        attr_accessor :numberOfWorkers
        attr_accessor :grossFloorAreaUsedForFoodPreparation
        attr_accessor :grossFloorAreaHotelConferenceSpace

        def initialize(totalGrossFloorArea = nil, fullServiceSpaFloorArea = nil, gymCenterFloorArea = nil, hoursPerDayGuestsOnsite = nil, numberOfCommercialRefrigerationUnits = nil, numberOfGuestMealsServedPerYear = nil, numberOfHotelRooms = nil, laundryFacility = nil, percentCooled = nil, percentHeated = nil, cookingFacilities = nil, amountOfLaundryProcessedAnnually = nil, numberOfWorkers = nil, grossFloorAreaUsedForFoodPreparation = nil, grossFloorAreaHotelConferenceSpace = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @fullServiceSpaFloorArea = fullServiceSpaFloorArea
          @gymCenterFloorArea = gymCenterFloorArea
          @hoursPerDayGuestsOnsite = hoursPerDayGuestsOnsite
          @numberOfCommercialRefrigerationUnits = numberOfCommercialRefrigerationUnits
          @numberOfGuestMealsServedPerYear = numberOfGuestMealsServedPerYear
          @numberOfHotelRooms = numberOfHotelRooms
          @laundryFacility = laundryFacility
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @cookingFacilities = cookingFacilities
          @amountOfLaundryProcessedAnnually = amountOfLaundryProcessedAnnually
          @numberOfWorkers = numberOfWorkers
          @grossFloorAreaUsedForFoodPreparation = grossFloorAreaUsedForFoodPreparation
          @grossFloorAreaHotelConferenceSpace = grossFloorAreaHotelConferenceSpace
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}k12SchoolType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::K12SchoolType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class K12SchoolType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] openOnWeekends
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] cookingFacilities
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] isHighSchool
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] monthsInUse
      #   @return [PortfolioManager::Xml::MonthsInUseType]
      # @!attribute [rw] schoolDistrict
      #   @return [PortfolioManager::Xml::UseStringType]
      # @!attribute [rw] studentSeatingCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] gymnasiumFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] grossFloorAreaUsedForFoodPreparation
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :openOnWeekends
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated
        attr_accessor :numberOfComputers
        attr_accessor :cookingFacilities
        attr_accessor :isHighSchool
        attr_accessor :monthsInUse
        attr_accessor :schoolDistrict
        attr_accessor :studentSeatingCapacity
        attr_accessor :numberOfWorkers
        attr_accessor :gymnasiumFloorArea
        attr_accessor :grossFloorAreaUsedForFoodPreparation

        def initialize(totalGrossFloorArea = nil, openOnWeekends = nil, numberOfWalkInRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil, numberOfComputers = nil, cookingFacilities = nil, isHighSchool = nil, monthsInUse = nil, schoolDistrict = nil, studentSeatingCapacity = nil, numberOfWorkers = nil, gymnasiumFloorArea = nil, grossFloorAreaUsedForFoodPreparation = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @openOnWeekends = openOnWeekends
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
          @numberOfComputers = numberOfComputers
          @cookingFacilities = cookingFacilities
          @isHighSchool = isHighSchool
          @monthsInUse = monthsInUse
          @schoolDistrict = schoolDistrict
          @studentSeatingCapacity = studentSeatingCapacity
          @numberOfWorkers = numberOfWorkers
          @gymnasiumFloorArea = gymnasiumFloorArea
          @grossFloorAreaUsedForFoodPreparation = grossFloorAreaUsedForFoodPreparation
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}bankBranchType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::BankBranchType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class BankBranchType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentOfficeCooled
      #   @return [PortfolioManager::Xml::PercentOfficeCooledType]
      # @!attribute [rw] percentOfficeHeated
      #   @return [PortfolioManager::Xml::PercentOfficeHeatedType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfComputers
        attr_accessor :percentOfficeCooled
        attr_accessor :percentOfficeHeated
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers

        def initialize(totalGrossFloorArea = nil, numberOfComputers = nil, percentOfficeCooled = nil, percentOfficeHeated = nil, weeklyOperatingHours = nil, numberOfWorkers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfComputers = numberOfComputers
          @percentOfficeCooled = percentOfficeCooled
          @percentOfficeHeated = percentOfficeHeated
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}collegeUniversityType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::CollegeUniversityType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class CollegeUniversityType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] enrollment
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] grantDollars
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfFTEWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfComputers
        attr_accessor :enrollment
        attr_accessor :grantDollars
        attr_accessor :numberOfFTEWorkers

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfComputers = nil, enrollment = nil, grantDollars = nil, numberOfFTEWorkers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfComputers = numberOfComputers
          @enrollment = enrollment
          @grantDollars = grantDollars
          @numberOfFTEWorkers = numberOfFTEWorkers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}indoorArenaType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::IndoorArenaType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class IndoorArenaType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] enclosedFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfSportingEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfConcertShowEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfSpecialOtherEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] sizeOfElectronicScoreBoards
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] iceEvents
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :enclosedFloorArea
        attr_accessor :numberOfSportingEventsPerYear
        attr_accessor :numberOfConcertShowEventsPerYear
        attr_accessor :numberOfSpecialOtherEventsPerYear
        attr_accessor :sizeOfElectronicScoreBoards
        attr_accessor :iceEvents
        attr_accessor :numberOfComputers
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, enclosedFloorArea = nil, numberOfSportingEventsPerYear = nil, numberOfConcertShowEventsPerYear = nil, numberOfSpecialOtherEventsPerYear = nil, sizeOfElectronicScoreBoards = nil, iceEvents = nil, numberOfComputers = nil, numberOfWalkInRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @enclosedFloorArea = enclosedFloorArea
          @numberOfSportingEventsPerYear = numberOfSportingEventsPerYear
          @numberOfConcertShowEventsPerYear = numberOfConcertShowEventsPerYear
          @numberOfSpecialOtherEventsPerYear = numberOfSpecialOtherEventsPerYear
          @sizeOfElectronicScoreBoards = sizeOfElectronicScoreBoards
          @iceEvents = iceEvents
          @numberOfComputers = numberOfComputers
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}otherStadiumType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::OtherStadiumType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class OtherStadiumType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] enclosedFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfSportingEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfConcertShowEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfSpecialOtherEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] sizeOfElectronicScoreBoards
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] iceEvents
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :enclosedFloorArea
        attr_accessor :numberOfSportingEventsPerYear
        attr_accessor :numberOfConcertShowEventsPerYear
        attr_accessor :numberOfSpecialOtherEventsPerYear
        attr_accessor :sizeOfElectronicScoreBoards
        attr_accessor :iceEvents
        attr_accessor :numberOfComputers
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, enclosedFloorArea = nil, numberOfSportingEventsPerYear = nil, numberOfConcertShowEventsPerYear = nil, numberOfSpecialOtherEventsPerYear = nil, sizeOfElectronicScoreBoards = nil, iceEvents = nil, numberOfComputers = nil, numberOfWalkInRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @enclosedFloorArea = enclosedFloorArea
          @numberOfSportingEventsPerYear = numberOfSportingEventsPerYear
          @numberOfConcertShowEventsPerYear = numberOfConcertShowEventsPerYear
          @numberOfSpecialOtherEventsPerYear = numberOfSpecialOtherEventsPerYear
          @sizeOfElectronicScoreBoards = sizeOfElectronicScoreBoards
          @iceEvents = iceEvents
          @numberOfComputers = numberOfComputers
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}stadiumClosedType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::StadiumClosedType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class StadiumClosedType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] enclosedFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfSportingEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfConcertShowEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfSpecialOtherEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] sizeOfElectronicScoreBoards
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] iceEvents
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :enclosedFloorArea
        attr_accessor :numberOfSportingEventsPerYear
        attr_accessor :numberOfConcertShowEventsPerYear
        attr_accessor :numberOfSpecialOtherEventsPerYear
        attr_accessor :sizeOfElectronicScoreBoards
        attr_accessor :iceEvents
        attr_accessor :numberOfComputers
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, enclosedFloorArea = nil, numberOfSportingEventsPerYear = nil, numberOfConcertShowEventsPerYear = nil, numberOfSpecialOtherEventsPerYear = nil, sizeOfElectronicScoreBoards = nil, iceEvents = nil, numberOfComputers = nil, numberOfWalkInRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @enclosedFloorArea = enclosedFloorArea
          @numberOfSportingEventsPerYear = numberOfSportingEventsPerYear
          @numberOfConcertShowEventsPerYear = numberOfConcertShowEventsPerYear
          @numberOfSpecialOtherEventsPerYear = numberOfSpecialOtherEventsPerYear
          @sizeOfElectronicScoreBoards = sizeOfElectronicScoreBoards
          @iceEvents = iceEvents
          @numberOfComputers = numberOfComputers
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}stadiumOpenType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::StadiumOpenType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class StadiumOpenType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] enclosedFloorArea
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] numberOfSportingEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfConcertShowEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfSpecialOtherEventsPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] sizeOfElectronicScoreBoards
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] iceEvents
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :enclosedFloorArea
        attr_accessor :numberOfSportingEventsPerYear
        attr_accessor :numberOfConcertShowEventsPerYear
        attr_accessor :numberOfSpecialOtherEventsPerYear
        attr_accessor :sizeOfElectronicScoreBoards
        attr_accessor :iceEvents
        attr_accessor :numberOfComputers
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, enclosedFloorArea = nil, numberOfSportingEventsPerYear = nil, numberOfConcertShowEventsPerYear = nil, numberOfSpecialOtherEventsPerYear = nil, sizeOfElectronicScoreBoards = nil, iceEvents = nil, numberOfComputers = nil, numberOfWalkInRefrigerationUnits = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @enclosedFloorArea = enclosedFloorArea
          @numberOfSportingEventsPerYear = numberOfSportingEventsPerYear
          @numberOfConcertShowEventsPerYear = numberOfConcertShowEventsPerYear
          @numberOfSpecialOtherEventsPerYear = numberOfSpecialOtherEventsPerYear
          @sizeOfElectronicScoreBoards = sizeOfElectronicScoreBoards
          @iceEvents = iceEvents
          @numberOfComputers = numberOfComputers
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}iceCurlingRinkType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::IceCurlingRinkType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class IceCurlingRinkType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfIndoorIceRinks
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] totalIceRinkSurfaceAreaForAllRinks
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] monthsMainIndoorIceRinkInUse
      #   @return [PortfolioManager::Xml::MonthsInUseType]
      # @!attribute [rw] numberOfWeeklyIceResurfacingForAllRinks
      #   @return [PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType]
      # @!attribute [rw] numberOfFTEWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfCurlingSheets
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] spectatorSeatingCapacity
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfIndoorIceRinks
        attr_accessor :totalIceRinkSurfaceAreaForAllRinks
        attr_accessor :monthsMainIndoorIceRinkInUse
        attr_accessor :numberOfWeeklyIceResurfacingForAllRinks
        attr_accessor :numberOfFTEWorkers
        attr_accessor :numberOfCurlingSheets
        attr_accessor :spectatorSeatingCapacity

        def initialize(totalGrossFloorArea = nil, numberOfIndoorIceRinks = nil, totalIceRinkSurfaceAreaForAllRinks = nil, monthsMainIndoorIceRinkInUse = nil, numberOfWeeklyIceResurfacingForAllRinks = nil, numberOfFTEWorkers = nil, numberOfCurlingSheets = nil, spectatorSeatingCapacity = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfIndoorIceRinks = numberOfIndoorIceRinks
          @totalIceRinkSurfaceAreaForAllRinks = totalIceRinkSurfaceAreaForAllRinks
          @monthsMainIndoorIceRinkInUse = monthsMainIndoorIceRinkInUse
          @numberOfWeeklyIceResurfacingForAllRinks = numberOfWeeklyIceResurfacingForAllRinks
          @numberOfFTEWorkers = numberOfFTEWorkers
          @numberOfCurlingSheets = numberOfCurlingSheets
          @spectatorSeatingCapacity = spectatorSeatingCapacity
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}selfStorageFacilityType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::SelfStorageFacilityType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class SelfStorageFacilityType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentUsedForColdStorage
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] numberOfWalkInRefrigerationUnits
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] clearHeight
      #   @return [PortfolioManager::Xml::ClearHeightUnitsType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :percentUsedForColdStorage
        attr_accessor :numberOfWalkInRefrigerationUnits
        attr_accessor :clearHeight
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :numberOfComputers

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, percentUsedForColdStorage = nil, numberOfWalkInRefrigerationUnits = nil, clearHeight = nil, percentHeated = nil, percentCooled = nil, numberOfComputers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @percentUsedForColdStorage = percentUsedForColdStorage
          @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
          @clearHeight = clearHeight
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @numberOfComputers = numberOfComputers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}otherType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::OtherType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class OtherType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfComputers
        attr_accessor :numberOfWorkers

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfComputers = nil, numberOfWorkers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfComputers = numberOfComputers
          @numberOfWorkers = numberOfWorkers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}evChargingStationType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::EvChargingStationType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class EvChargingStationType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] numberOfLevelOneEvChargingStations
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfLevelTwoEvChargingStations
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfDcFastEvChargingStations
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :numberOfLevelOneEvChargingStations
        attr_accessor :numberOfLevelTwoEvChargingStations
        attr_accessor :numberOfDcFastEvChargingStations

        def initialize(numberOfLevelOneEvChargingStations = nil, numberOfLevelTwoEvChargingStations = nil, numberOfDcFastEvChargingStations = nil)
          @numberOfLevelOneEvChargingStations = numberOfLevelOneEvChargingStations
          @numberOfLevelTwoEvChargingStations = numberOfLevelTwoEvChargingStations
          @numberOfDcFastEvChargingStations = numberOfDcFastEvChargingStations
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}vehicleDealershipType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::VehicleDealershipType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class VehicleDealershipType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] averageNumberOfVehiclesInInventory
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfWorkers
        attr_accessor :averageNumberOfVehiclesInInventory
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfComputers

        def initialize(totalGrossFloorArea = nil, numberOfWorkers = nil, averageNumberOfVehiclesInInventory = nil, percentHeated = nil, percentCooled = nil, weeklyOperatingHours = nil, numberOfComputers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfWorkers = numberOfWorkers
          @averageNumberOfVehiclesInInventory = averageNumberOfVehiclesInInventory
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfComputers = numberOfComputers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}mailingCenterPostOfficeType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::MailingCenterPostOfficeType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class MailingCenterPostOfficeType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfLettersPackagesPerYear
      #   @return [PortfolioManager::Xml::UseIntegerType]
      # @!attribute [rw] deliveryFacility
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :numberOfComputers
        attr_accessor :numberOfLettersPackagesPerYear
        attr_accessor :deliveryFacility
        attr_accessor :percentCooled
        attr_accessor :percentHeated

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, numberOfComputers = nil, numberOfLettersPackagesPerYear = nil, deliveryFacility = nil, percentCooled = nil, percentHeated = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @numberOfComputers = numberOfComputers
          @numberOfLettersPackagesPerYear = numberOfLettersPackagesPerYear
          @deliveryFacility = deliveryFacility
          @percentCooled = percentCooled
          @percentHeated = percentHeated
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}customUseType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::CustomUseType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class CustomUseType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] customUseDetail1
      #   @return [PortfolioManager::Xml::CustomUseDetailsType]
      # @!attribute [rw] customUseDetail2
      #   @return [PortfolioManager::Xml::CustomUseDetailsType]
      class UseDetails
        attr_accessor :customUseDetail1
        attr_accessor :customUseDetail2

        def initialize(customUseDetail1 = nil, customUseDetail2 = nil)
          @customUseDetail1 = customUseDetail1
          @customUseDetail2 = customUseDetail2
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}libraryType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::LibraryType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class LibraryType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :weeklyOperatingHours
        attr_accessor :numberOfWorkers
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :numberOfComputers

        def initialize(totalGrossFloorArea = nil, weeklyOperatingHours = nil, numberOfWorkers = nil, percentHeated = nil, percentCooled = nil, numberOfComputers = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @weeklyOperatingHours = weeklyOperatingHours
          @numberOfWorkers = numberOfWorkers
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @numberOfComputers = numberOfComputers
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}museumType
    # @!attribute [rw] name
    #   @return [Object]
    # @!attribute [rw] useDetails
    #   @return [PortfolioManager::Xml::MuseumType::UseDetails]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class MuseumType

      # inner class for member: useDetails
      # {}useDetails
      # @!attribute [rw] totalGrossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      # @!attribute [rw] numberOfWorkers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] precisionControlsForTemperatureAndHumidity
      #   @return [PortfolioManager::Xml::UseYesNoType]
      # @!attribute [rw] grossFloorAreaThatIsExhibitSpace
      #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
      # @!attribute [rw] percentHeated
      #   @return [PortfolioManager::Xml::PercentHeatedType]
      # @!attribute [rw] percentCooled
      #   @return [PortfolioManager::Xml::PercentCooledType]
      # @!attribute [rw] numberOfComputers
      #   @return [PortfolioManager::Xml::UseDecimalType]
      # @!attribute [rw] weeklyOperatingHours
      #   @return [PortfolioManager::Xml::UseDecimalType]
      class UseDetails
        attr_accessor :totalGrossFloorArea
        attr_accessor :numberOfWorkers
        attr_accessor :precisionControlsForTemperatureAndHumidity
        attr_accessor :grossFloorAreaThatIsExhibitSpace
        attr_accessor :percentHeated
        attr_accessor :percentCooled
        attr_accessor :numberOfComputers
        attr_accessor :weeklyOperatingHours

        def initialize(totalGrossFloorArea = nil, numberOfWorkers = nil, precisionControlsForTemperatureAndHumidity = nil, grossFloorAreaThatIsExhibitSpace = nil, percentHeated = nil, percentCooled = nil, numberOfComputers = nil, weeklyOperatingHours = nil)
          @totalGrossFloorArea = totalGrossFloorArea
          @numberOfWorkers = numberOfWorkers
          @precisionControlsForTemperatureAndHumidity = precisionControlsForTemperatureAndHumidity
          @grossFloorAreaThatIsExhibitSpace = grossFloorAreaThatIsExhibitSpace
          @percentHeated = percentHeated
          @percentCooled = percentCooled
          @numberOfComputers = numberOfComputers
          @weeklyOperatingHours = weeklyOperatingHours
        end
      end

      attr_accessor :name
      attr_accessor :useDetails
      attr_accessor :audit

      def initialize(name = nil, useDetails = nil, audit = nil)
        @name = name
        @useDetails = useDetails
        @audit = audit
      end
    end

    # {}propertyDesignType
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] primaryFunction
    #   @return [PortfolioManager::Xml::PrimaryFunctionType]
    # @!attribute [rw] grossFloorArea
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] plannedConstructionCompletionYear
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] address
    #   @return [PortfolioManager::Xml::AddressType]
    # @!attribute [rw] numberOfBuildings
    #   @return [SOAP::SOAPInt]
    class PropertyDesignType
      attr_accessor :name
      attr_accessor :primaryFunction
      attr_accessor :grossFloorArea
      attr_accessor :plannedConstructionCompletionYear
      attr_accessor :address
      attr_accessor :numberOfBuildings

      def initialize(name = nil, primaryFunction = nil, grossFloorArea = nil, plannedConstructionCompletionYear = nil, address = nil, numberOfBuildings = nil)
        @name = name
        @primaryFunction = primaryFunction
        @grossFloorArea = grossFloorArea
        @plannedConstructionCompletionYear = plannedConstructionCompletionYear
        @address = address
        @numberOfBuildings = numberOfBuildings
      end
    end

    # {}designBaseType
    # @!attribute [rw] propertyUses
    #   @return [PortfolioManager::Xml::DesignBaseType::PropertyUses]
    # @!attribute [rw] drinkingWaterInfluentFlow
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] wasteWaterInfluentFlow
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] itSiteEnergy
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] estimatedEnergyList
    #   @return [PortfolioManager::Xml::DesignBaseType::EstimatedEnergyList]
    # @!attribute [rw] target
    #   @return [PortfolioManager::Xml::DesignBaseType::Target]
    class DesignBaseType

      # inner class for member: propertyUses
      # {}propertyUses
      # @!attribute [rw] prison
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] refrigeratedWarehouse
      #   @return [PortfolioManager::Xml::RefrigeratedWarehouseType]
      # @!attribute [rw] retail
      #   @return [PortfolioManager::Xml::RetailType]
      # @!attribute [rw] hospital
      #   @return [PortfolioManager::Xml::HospitalType]
      # @!attribute [rw] medicalOffice
      #   @return [PortfolioManager::Xml::MedicalOfficeType]
      # @!attribute [rw] dataCenter
      #   @return [PortfolioManager::Xml::DataCenterType]
      # @!attribute [rw] courthouse
      #   @return [PortfolioManager::Xml::CourthouseType]
      # @!attribute [rw] singleFamilyHome
      #   @return [PortfolioManager::Xml::SingleFamilyHomeType]
      # @!attribute [rw] nonRefrigeratedWarehouse
      #   @return [PortfolioManager::Xml::NonRefrigeratedWarehouseType]
      # @!attribute [rw] multifamilyHousing
      #   @return [PortfolioManager::Xml::MultifamilyHousingType]
      # @!attribute [rw] office
      #   @return [PortfolioManager::Xml::OfficeType]
      # @!attribute [rw] wholesaleClubSupercenter
      #   @return [PortfolioManager::Xml::WholesaleClubSupercenterType]
      # @!attribute [rw] selfStorageFacility
      #   @return [PortfolioManager::Xml::SelfStorageFacilityType]
      # @!attribute [rw] seniorLivingCommunity
      #   @return [PortfolioManager::Xml::SeniorLivingCommunityType]
      # @!attribute [rw] residentialCareFacility
      #   @return [PortfolioManager::Xml::ResidentialCareFacilityType]
      # @!attribute [rw] swimmingPool
      #   @return [PortfolioManager::Xml::SwimmingPoolType]
      # @!attribute [rw] residenceHallDormitory
      #   @return [PortfolioManager::Xml::ResidenceHallDormitoryType]
      # @!attribute [rw] wastewaterTreatmentPlant
      #   @return [PortfolioManager::Xml::WastewaterTreatmentPlantType]
      # @!attribute [rw] distributionCenter
      #   @return [PortfolioManager::Xml::DistributionCenterType]
      # @!attribute [rw] worshipFacility
      #   @return [PortfolioManager::Xml::WorshipFacilityType]
      # @!attribute [rw] financialOffice
      #   @return [PortfolioManager::Xml::FinancialOfficeType]
      # @!attribute [rw] drinkingWaterTreatmentAndDistribution
      #   @return [PortfolioManager::Xml::DrinkingWaterTreatmentAndDistributionType]
      # @!attribute [rw] parking
      #   @return [PortfolioManager::Xml::ParkingType]
      # @!attribute [rw] supermarket
      #   @return [PortfolioManager::Xml::SupermarketType]
      # @!attribute [rw] barracks
      #   @return [PortfolioManager::Xml::BarracksType]
      # @!attribute [rw] hotel
      #   @return [PortfolioManager::Xml::HotelType]
      # @!attribute [rw] k12School
      #   @return [PortfolioManager::Xml::K12SchoolType]
      # @!attribute [rw] bankBranch
      #   @return [PortfolioManager::Xml::BankBranchType]
      # @!attribute [rw] collegeUniversity
      #   @return [PortfolioManager::Xml::CollegeUniversityType]
      # @!attribute [rw] indoorArena
      #   @return [PortfolioManager::Xml::IndoorArenaType]
      # @!attribute [rw] otherStadium
      #   @return [PortfolioManager::Xml::OtherStadiumType]
      # @!attribute [rw] stadiumClosed
      #   @return [PortfolioManager::Xml::StadiumClosedType]
      # @!attribute [rw] stadiumOpen
      #   @return [PortfolioManager::Xml::StadiumOpenType]
      # @!attribute [rw] manufacturingIndustrialPlant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] ambulatorySurgicalCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] bowlingAlley
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherPublicServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherLodgingResidential
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] casino
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] personalServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] mailingCenterPostOffice
      #   @return [PortfolioManager::Xml::MailingCenterPostOfficeType]
      # @!attribute [rw] library
      #   @return [PortfolioManager::Xml::LibraryType]
      # @!attribute [rw] otherSpecialityHospital
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] conventionCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] veterinaryOffice
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] urgentCareClinicOtherOutpatient
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] energyPowerStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] barNightclub
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherUtility
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] zoo
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] vehicleDealership
      #   @return [PortfolioManager::Xml::VehicleDealershipType]
      # @!attribute [rw] museum
      #   @return [PortfolioManager::Xml::MuseumType]
      # @!attribute [rw] otherRecreation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherRestaurantBar
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] lifestyleCenter
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] policeStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] preschoolDaycare
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] raceTrack
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fastFoodRestaurant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] laboratory
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] convenienceStoreWithoutGasStation
      #   @return [PortfolioManager::Xml::ConvenienceStoreWithoutGasStationType]
      # @!attribute [rw] repairServices
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherTechnologyScience
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fireStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] foodSales
      #   @return [PortfolioManager::Xml::FoodSalesType]
      # @!attribute [rw] performingArts
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] outpatientRehabilitationPhysicalTherapy
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] stripMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] rollerRink
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherEducation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] fitnessCenterHealthClubGym
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] aquarium
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] foodService
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] restaurant
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] enclosedMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] iceCurlingRink
      #   @return [PortfolioManager::Xml::IceCurlingRinkType]
      # @!attribute [rw] adultEducation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherEntertainmentPublicAssembly
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] movieTheater
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] transportationTerminalStation
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] vocationalSchool
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] socialMeetingHall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] otherMall
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] convenienceStoreWithGasStation
      #   @return [PortfolioManager::Xml::ConvenienceStoreWithGasStationType]
      # @!attribute [rw] other
      #   @return [PortfolioManager::Xml::OtherType]
      # @!attribute [rw] electricVehicleChargingStation
      #   @return [PortfolioManager::Xml::EvChargingStationType]
      class PropertyUses
        attr_accessor :prison
        attr_accessor :refrigeratedWarehouse
        attr_accessor :retail
        attr_accessor :hospital
        attr_accessor :medicalOffice
        attr_accessor :dataCenter
        attr_accessor :courthouse
        attr_accessor :singleFamilyHome
        attr_accessor :nonRefrigeratedWarehouse
        attr_accessor :multifamilyHousing
        attr_accessor :office
        attr_accessor :wholesaleClubSupercenter
        attr_accessor :selfStorageFacility
        attr_accessor :seniorLivingCommunity
        attr_accessor :residentialCareFacility
        attr_accessor :swimmingPool
        attr_accessor :residenceHallDormitory
        attr_accessor :wastewaterTreatmentPlant
        attr_accessor :distributionCenter
        attr_accessor :worshipFacility
        attr_accessor :financialOffice
        attr_accessor :drinkingWaterTreatmentAndDistribution
        attr_accessor :parking
        attr_accessor :supermarket
        attr_accessor :barracks
        attr_accessor :hotel
        attr_accessor :k12School
        attr_accessor :bankBranch
        attr_accessor :collegeUniversity
        attr_accessor :indoorArena
        attr_accessor :otherStadium
        attr_accessor :stadiumClosed
        attr_accessor :stadiumOpen
        attr_accessor :manufacturingIndustrialPlant
        attr_accessor :ambulatorySurgicalCenter
        attr_accessor :bowlingAlley
        attr_accessor :otherPublicServices
        attr_accessor :otherLodgingResidential
        attr_accessor :casino
        attr_accessor :personalServices
        attr_accessor :mailingCenterPostOffice
        attr_accessor :library
        attr_accessor :otherSpecialityHospital
        attr_accessor :conventionCenter
        attr_accessor :veterinaryOffice
        attr_accessor :urgentCareClinicOtherOutpatient
        attr_accessor :energyPowerStation
        attr_accessor :otherServices
        attr_accessor :barNightclub
        attr_accessor :otherUtility
        attr_accessor :zoo
        attr_accessor :vehicleDealership
        attr_accessor :museum
        attr_accessor :otherRecreation
        attr_accessor :otherRestaurantBar
        attr_accessor :lifestyleCenter
        attr_accessor :policeStation
        attr_accessor :preschoolDaycare
        attr_accessor :raceTrack
        attr_accessor :fastFoodRestaurant
        attr_accessor :laboratory
        attr_accessor :convenienceStoreWithoutGasStation
        attr_accessor :repairServices
        attr_accessor :otherTechnologyScience
        attr_accessor :fireStation
        attr_accessor :foodSales
        attr_accessor :performingArts
        attr_accessor :outpatientRehabilitationPhysicalTherapy
        attr_accessor :stripMall
        attr_accessor :rollerRink
        attr_accessor :otherEducation
        attr_accessor :fitnessCenterHealthClubGym
        attr_accessor :aquarium
        attr_accessor :foodService
        attr_accessor :restaurant
        attr_accessor :enclosedMall
        attr_accessor :iceCurlingRink
        attr_accessor :adultEducation
        attr_accessor :otherEntertainmentPublicAssembly
        attr_accessor :movieTheater
        attr_accessor :transportationTerminalStation
        attr_accessor :vocationalSchool
        attr_accessor :socialMeetingHall
        attr_accessor :otherMall
        attr_accessor :convenienceStoreWithGasStation
        attr_accessor :other
        attr_accessor :electricVehicleChargingStation

        def initialize(prison = [], refrigeratedWarehouse = [], retail = [], hospital = [], medicalOffice = [], dataCenter = [], courthouse = [], singleFamilyHome = [], nonRefrigeratedWarehouse = [], multifamilyHousing = [], office = [], wholesaleClubSupercenter = [], selfStorageFacility = [], seniorLivingCommunity = [], residentialCareFacility = [], swimmingPool = [], residenceHallDormitory = [], wastewaterTreatmentPlant = [], distributionCenter = [], worshipFacility = [], financialOffice = [], drinkingWaterTreatmentAndDistribution = [], parking = [], supermarket = [], barracks = [], hotel = [], k12School = [], bankBranch = [], collegeUniversity = [], indoorArena = [], otherStadium = [], stadiumClosed = [], stadiumOpen = [], manufacturingIndustrialPlant = [], ambulatorySurgicalCenter = [], bowlingAlley = [], otherPublicServices = [], otherLodgingResidential = [], casino = [], personalServices = [], mailingCenterPostOffice = [], library = [], otherSpecialityHospital = [], conventionCenter = [], veterinaryOffice = [], urgentCareClinicOtherOutpatient = [], energyPowerStation = [], otherServices = [], barNightclub = [], otherUtility = [], zoo = [], vehicleDealership = [], museum = [], otherRecreation = [], otherRestaurantBar = [], lifestyleCenter = [], policeStation = [], preschoolDaycare = [], raceTrack = [], fastFoodRestaurant = [], laboratory = [], convenienceStoreWithoutGasStation = [], repairServices = [], otherTechnologyScience = [], fireStation = [], foodSales = [], performingArts = [], outpatientRehabilitationPhysicalTherapy = [], stripMall = [], rollerRink = [], otherEducation = [], fitnessCenterHealthClubGym = [], aquarium = [], foodService = [], restaurant = [], enclosedMall = [], iceCurlingRink = [], adultEducation = [], otherEntertainmentPublicAssembly = [], movieTheater = [], transportationTerminalStation = [], vocationalSchool = [], socialMeetingHall = [], otherMall = [], convenienceStoreWithGasStation = [], other = [], electricVehicleChargingStation = [])
          @prison = prison
          @refrigeratedWarehouse = refrigeratedWarehouse
          @retail = retail
          @hospital = hospital
          @medicalOffice = medicalOffice
          @dataCenter = dataCenter
          @courthouse = courthouse
          @singleFamilyHome = singleFamilyHome
          @nonRefrigeratedWarehouse = nonRefrigeratedWarehouse
          @multifamilyHousing = multifamilyHousing
          @office = office
          @wholesaleClubSupercenter = wholesaleClubSupercenter
          @selfStorageFacility = selfStorageFacility
          @seniorLivingCommunity = seniorLivingCommunity
          @residentialCareFacility = residentialCareFacility
          @swimmingPool = swimmingPool
          @residenceHallDormitory = residenceHallDormitory
          @wastewaterTreatmentPlant = wastewaterTreatmentPlant
          @distributionCenter = distributionCenter
          @worshipFacility = worshipFacility
          @financialOffice = financialOffice
          @drinkingWaterTreatmentAndDistribution = drinkingWaterTreatmentAndDistribution
          @parking = parking
          @supermarket = supermarket
          @barracks = barracks
          @hotel = hotel
          @k12School = k12School
          @bankBranch = bankBranch
          @collegeUniversity = collegeUniversity
          @indoorArena = indoorArena
          @otherStadium = otherStadium
          @stadiumClosed = stadiumClosed
          @stadiumOpen = stadiumOpen
          @manufacturingIndustrialPlant = manufacturingIndustrialPlant
          @ambulatorySurgicalCenter = ambulatorySurgicalCenter
          @bowlingAlley = bowlingAlley
          @otherPublicServices = otherPublicServices
          @otherLodgingResidential = otherLodgingResidential
          @casino = casino
          @personalServices = personalServices
          @mailingCenterPostOffice = mailingCenterPostOffice
          @library = library
          @otherSpecialityHospital = otherSpecialityHospital
          @conventionCenter = conventionCenter
          @veterinaryOffice = veterinaryOffice
          @urgentCareClinicOtherOutpatient = urgentCareClinicOtherOutpatient
          @energyPowerStation = energyPowerStation
          @otherServices = otherServices
          @barNightclub = barNightclub
          @otherUtility = otherUtility
          @zoo = zoo
          @vehicleDealership = vehicleDealership
          @museum = museum
          @otherRecreation = otherRecreation
          @otherRestaurantBar = otherRestaurantBar
          @lifestyleCenter = lifestyleCenter
          @policeStation = policeStation
          @preschoolDaycare = preschoolDaycare
          @raceTrack = raceTrack
          @fastFoodRestaurant = fastFoodRestaurant
          @laboratory = laboratory
          @convenienceStoreWithoutGasStation = convenienceStoreWithoutGasStation
          @repairServices = repairServices
          @otherTechnologyScience = otherTechnologyScience
          @fireStation = fireStation
          @foodSales = foodSales
          @performingArts = performingArts
          @outpatientRehabilitationPhysicalTherapy = outpatientRehabilitationPhysicalTherapy
          @stripMall = stripMall
          @rollerRink = rollerRink
          @otherEducation = otherEducation
          @fitnessCenterHealthClubGym = fitnessCenterHealthClubGym
          @aquarium = aquarium
          @foodService = foodService
          @restaurant = restaurant
          @enclosedMall = enclosedMall
          @iceCurlingRink = iceCurlingRink
          @adultEducation = adultEducation
          @otherEntertainmentPublicAssembly = otherEntertainmentPublicAssembly
          @movieTheater = movieTheater
          @transportationTerminalStation = transportationTerminalStation
          @vocationalSchool = vocationalSchool
          @socialMeetingHall = socialMeetingHall
          @otherMall = otherMall
          @convenienceStoreWithGasStation = convenienceStoreWithGasStation
          @other = other
          @electricVehicleChargingStation = electricVehicleChargingStation
        end
      end

      # inner class for member: estimatedEnergyList
      # {}estimatedEnergyList
      # @!attribute [rw] entries
      #   @return [PortfolioManager::Xml::EstimatedEnergyListType]
      class EstimatedEnergyList
        attr_accessor :entries

        def initialize(entries = nil)
          @entries = entries
        end
      end

      # inner class for member: target
      # {}target
      # @!attribute [rw] targetTypeScore
      #   @return [PortfolioManager::Xml::TargetTypeScoreType]
      # @!attribute [rw] targetTypePercentage
      #   @return [PortfolioManager::Xml::TargetTypePercentageType]
      class Target
        attr_accessor :targetTypeScore
        attr_accessor :targetTypePercentage

        def initialize(targetTypeScore = nil, targetTypePercentage = nil)
          @targetTypeScore = targetTypeScore
          @targetTypePercentage = targetTypePercentage
        end
      end

      attr_accessor :propertyUses
      attr_accessor :drinkingWaterInfluentFlow
      attr_accessor :wasteWaterInfluentFlow
      attr_accessor :itSiteEnergy
      attr_accessor :estimatedEnergyList
      attr_accessor :target

      def initialize(propertyUses = nil, drinkingWaterInfluentFlow = nil, wasteWaterInfluentFlow = nil, itSiteEnergy = nil, estimatedEnergyList = nil, target = nil)
        @propertyUses = propertyUses
        @drinkingWaterInfluentFlow = drinkingWaterInfluentFlow
        @wasteWaterInfluentFlow = wasteWaterInfluentFlow
        @itSiteEnergy = itSiteEnergy
        @estimatedEnergyList = estimatedEnergyList
        @target = target
      end
    end

    # {}targetTypeScoreType
    # @!attribute [rw] value
    #   @return [PortfolioManager::Xml::TargetTypeScoreValuesType]
    class TargetTypeScoreType
      attr_accessor :value

      def initialize(value = nil)
        @value = value
      end
    end

    # {}targetTypePercentageType
    # @!attribute [rw] value
    #   @return [PortfolioManager::Xml::TargetTypePercentageValuesType]
    class TargetTypePercentageType
      attr_accessor :value

      def initialize(value = nil)
        @value = value
      end
    end

    # {}estimatedEnergyListType
    class EstimatedEnergyListType < ::Array
    end

    # {}estimatedEnergyType
    # @!attribute [rw] energyType
    #   @return [PortfolioManager::Xml::AllEnergyMetersType]
    # @!attribute [rw] energyUnit
    #   @return [PortfolioManager::Xml::DesignUnitOfMeasure]
    # @!attribute [rw] estimatedAnnualEnergyUsage
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] energyRateCost
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] energyRateCostUnit
    #   @return [PortfolioManager::Xml::DesignUnitOfMeasure]
    class EstimatedEnergyType
      attr_accessor :energyType
      attr_accessor :energyUnit
      attr_accessor :estimatedAnnualEnergyUsage
      attr_accessor :energyRateCost
      attr_accessor :energyRateCostUnit

      def initialize(energyType = nil, energyUnit = nil, estimatedAnnualEnergyUsage = nil, energyRateCost = nil, energyRateCostUnit = nil)
        @energyType = energyType
        @energyUnit = energyUnit
        @estimatedAnnualEnergyUsage = estimatedAnnualEnergyUsage
        @energyRateCost = energyRateCost
        @energyRateCostUnit = energyRateCostUnit
      end
    end

    # {}meterDataType
    # @!attribute [rw] meterConsumption
    #   @return [PortfolioManager::Xml::MeterConsumptionType]
    # @!attribute [rw] meterDelivery
    #   @return [PortfolioManager::Xml::MeterDeliveryType]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    class MeterDataType
      attr_accessor :meterConsumption
      attr_accessor :meterDelivery
      attr_accessor :links

      def initialize(meterConsumption = [], meterDelivery = [], links = nil)
        @meterConsumption = meterConsumption
        @meterDelivery = meterDelivery
        @links = links
      end
    end

    # {}meterConsumptionType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] startDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] endDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] usage
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] cost
    #   @return [Object]
    # @!attribute [rw] energyExportedOffSite
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] greenPower
    #   @return [PortfolioManager::Xml::GreenPowerType]
    # @!attribute [rw] rECOwnership
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] demandTracking
    #   @return [PortfolioManager::Xml::DemandTrackingType]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] xmlattr_estimatedValue
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_isGreenPower
    #   @return [SOAP::SOAPBoolean]
    class MeterConsumptionType
      AttrEstimatedValue = XSD::QName.new(nil, "estimatedValue")
      AttrIsGreenPower = XSD::QName.new(nil, "isGreenPower")

      attr_accessor :id
      attr_accessor :startDate
      attr_accessor :endDate
      attr_accessor :usage
      attr_accessor :cost
      attr_accessor :energyExportedOffSite
      attr_accessor :greenPower
      attr_accessor :rECOwnership
      attr_accessor :demandTracking
      attr_accessor :audit

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_estimatedValue
        __xmlattr[AttrEstimatedValue]
      end

      def xmlattr_estimatedValue=(value)
        __xmlattr[AttrEstimatedValue] = value
      end

      def xmlattr_isGreenPower
        __xmlattr[AttrIsGreenPower]
      end

      def xmlattr_isGreenPower=(value)
        __xmlattr[AttrIsGreenPower] = value
      end

      def initialize(id = nil, startDate = nil, endDate = nil, usage = nil, cost = nil, energyExportedOffSite = nil, greenPower = nil, rECOwnership = nil, demandTracking = nil, audit = nil)
        @id = id
        @startDate = startDate
        @endDate = endDate
        @usage = usage
        @cost = cost
        @energyExportedOffSite = energyExportedOffSite
        @greenPower = greenPower
        @rECOwnership = rECOwnership
        @demandTracking = demandTracking
        @audit = audit
        @__xmlattr = {}
      end
    end

    # {}meterDeliveryType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] deliveryDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] quantity
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] cost
    #   @return [Object]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] xmlattr_estimatedValue
    #   @return [SOAP::SOAPBoolean]
    class MeterDeliveryType
      AttrEstimatedValue = XSD::QName.new(nil, "estimatedValue")

      attr_accessor :id
      attr_accessor :deliveryDate
      attr_accessor :quantity
      attr_accessor :cost
      attr_accessor :audit

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_estimatedValue
        __xmlattr[AttrEstimatedValue]
      end

      def xmlattr_estimatedValue=(value)
        __xmlattr[AttrEstimatedValue] = value
      end

      def initialize(id = nil, deliveryDate = nil, quantity = nil, cost = nil, audit = nil)
        @id = id
        @deliveryDate = deliveryDate
        @quantity = quantity
        @cost = cost
        @audit = audit
        @__xmlattr = {}
      end
    end

    # {}greenPowerType
    # @!attribute [rw] value
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] sources
    #   @return [PortfolioManager::Xml::GreenPowerType::Sources]
    # @!attribute [rw] generationLocation
    #   @return [PortfolioManager::Xml::GreenPowerType::GenerationLocation]
    class GreenPowerType

      # inner class for member: sources
      # {}sources
      # @!attribute [rw] biomassPct
      #   @return [Object]
      # @!attribute [rw] biogasPct
      #   @return [Object]
      # @!attribute [rw] geothermalPct
      #   @return [Object]
      # @!attribute [rw] smallHydroPct
      #   @return [Object]
      # @!attribute [rw] solarPct
      #   @return [Object]
      # @!attribute [rw] windPct
      #   @return [Object]
      # @!attribute [rw] unknownPct
      #   @return [Object]
      class Sources
        attr_accessor :biomassPct
        attr_accessor :biogasPct
        attr_accessor :geothermalPct
        attr_accessor :smallHydroPct
        attr_accessor :solarPct
        attr_accessor :windPct
        attr_accessor :unknownPct

        def initialize(biomassPct = nil, biogasPct = nil, geothermalPct = nil, smallHydroPct = nil, solarPct = nil, windPct = nil, unknownPct = nil)
          @biomassPct = biomassPct
          @biogasPct = biogasPct
          @geothermalPct = geothermalPct
          @smallHydroPct = smallHydroPct
          @solarPct = solarPct
          @windPct = windPct
          @unknownPct = unknownPct
        end
      end

      # inner class for member: generationLocation
      # {}generationLocation
      # @!attribute [rw] generationPlant
      #   @return [Object]
      # @!attribute [rw] eGridSubRegion
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] unknown
      #   @return [SOAP::SOAPString]
      class GenerationLocation
        attr_accessor :generationPlant
        attr_accessor :eGridSubRegion
        attr_accessor :unknown

        def initialize(generationPlant = nil, eGridSubRegion = nil, unknown = nil)
          @generationPlant = generationPlant
          @eGridSubRegion = eGridSubRegion
          @unknown = unknown
        end
      end

      attr_accessor :value
      attr_accessor :sources
      attr_accessor :generationLocation

      def initialize(value = nil, sources = nil, generationLocation = nil)
        @value = value
        @sources = sources
        @generationLocation = generationLocation
      end
    end

    # {}demandTrackingType
    # @!attribute [rw] demand
    #   @return [Object]
    # @!attribute [rw] demandCost
    #   @return [Object]
    class DemandTrackingType
      attr_accessor :demand
      attr_accessor :demandCost

      def initialize(demand = nil, demandCost = nil)
        @demand = demand
        @demandCost = demandCost
      end
    end

    # {}meterPropertyAssociationListType
    # @!attribute [rw] energyMeterAssociation
    #   @return [PortfolioManager::Xml::EnergyMeterAssocAndConfigType]
    # @!attribute [rw] waterMeterAssociation
    #   @return [PortfolioManager::Xml::WaterMeterAssocAndConfigType]
    # @!attribute [rw] wasteMeterAssociation
    #   @return [PortfolioManager::Xml::WasteMeterAssocAndConfigType]
    class MeterPropertyAssociationListType
      attr_accessor :energyMeterAssociation
      attr_accessor :waterMeterAssociation
      attr_accessor :wasteMeterAssociation

      def initialize(energyMeterAssociation = nil, waterMeterAssociation = nil, wasteMeterAssociation = nil)
        @energyMeterAssociation = energyMeterAssociation
        @waterMeterAssociation = waterMeterAssociation
        @wasteMeterAssociation = wasteMeterAssociation
      end
    end

    # {}energyMeterAssocAndConfigType
    # @!attribute [rw] meters
    #   @return [PortfolioManager::Xml::MeterListType]
    # @!attribute [rw] propertyRepresentation
    #   @return [PortfolioManager::Xml::PropertyRepresentation]
    class EnergyMeterAssocAndConfigType
      attr_accessor :meters
      attr_accessor :propertyRepresentation

      def initialize(meters = nil, propertyRepresentation = nil)
        @meters = meters
        @propertyRepresentation = propertyRepresentation
      end
    end

    # {}waterMeterAssocAndConfigType
    # @!attribute [rw] meters
    #   @return [PortfolioManager::Xml::MeterListType]
    # @!attribute [rw] propertyRepresentation
    #   @return [PortfolioManager::Xml::PropertyRepresentation]
    class WaterMeterAssocAndConfigType
      attr_accessor :meters
      attr_accessor :propertyRepresentation

      def initialize(meters = nil, propertyRepresentation = nil)
        @meters = meters
        @propertyRepresentation = propertyRepresentation
      end
    end

    # {}wasteMeterAssocAndConfigType
    # @!attribute [rw] meters
    #   @return [PortfolioManager::Xml::MeterListType]
    class WasteMeterAssocAndConfigType
      attr_accessor :meters

      def initialize(meters = nil)
        @meters = meters
      end
    end

    # {}meterListType
    class MeterListType < ::Array
    end

    # {}tenantCommonAreaEnergyUseInformationType
    class TenantCommonAreaEnergyUseInformationType < ::Array
    end

    # {}mappingType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    class MappingType
      attr_accessor :id

      def initialize(id = nil)
        @id = id
      end
    end

    # {}baselineAndTargetType
    # @!attribute [rw] baseline
    #   @return [PortfolioManager::Xml::BaselineType]
    # @!attribute [rw] target
    #   @return [PortfolioManager::Xml::PerformanceTargetType]
    class BaselineAndTargetType
      attr_accessor :baseline
      attr_accessor :target

      def initialize(baseline = nil, target = nil)
        @baseline = baseline
        @target = target
      end
    end

    # {}baselineType
    # @!attribute [rw] energyBaselineDate
    #   @return [Object]
    # @!attribute [rw] waterBaselineDate
    #   @return [Object]
    class BaselineType
      attr_accessor :energyBaselineDate
      attr_accessor :waterBaselineDate

      def initialize(energyBaselineDate = nil, waterBaselineDate = nil)
        @energyBaselineDate = energyBaselineDate
        @waterBaselineDate = waterBaselineDate
      end
    end

    # {}performanceTargetType
    # @!attribute [rw] targetMetric
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] targetValue
    #   @return [SOAP::SOAPInteger]
    class PerformanceTargetType
      attr_accessor :targetMetric
      attr_accessor :targetValue

      def initialize(targetMetric = nil, targetValue = nil)
        @targetMetric = targetMetric
        @targetValue = targetValue
      end
    end

    # {}alertsType
    # @!attribute [rw] alert
    #   @return [PortfolioManager::Xml::AlertsType::Alert]
    # @!attribute [rw] xmlattr_year
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] xmlattr_month
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] xmlattr_propertyId
    #   @return [SOAP::SOAPLong]
    class AlertsType
      AttrMonth = XSD::QName.new(nil, "month")
      AttrPropertyId = XSD::QName.new(nil, "propertyId")
      AttrYear = XSD::QName.new(nil, "year")

      # inner class for member: alert
      # {}alert
      # @!attribute [rw] name
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] description
      #   @return [SOAP::SOAPString]
      class Alert
        attr_accessor :name
        attr_accessor :description

        def initialize(name = nil, description = nil)
          @name = name
          @description = description
        end
      end

      attr_accessor :alert

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_year
        __xmlattr[AttrYear]
      end

      def xmlattr_year=(value)
        __xmlattr[AttrYear] = value
      end

      def xmlattr_month
        __xmlattr[AttrMonth]
      end

      def xmlattr_month=(value)
        __xmlattr[AttrMonth] = value
      end

      def xmlattr_propertyId
        __xmlattr[AttrPropertyId]
      end

      def xmlattr_propertyId=(value)
        __xmlattr[AttrPropertyId] = value
      end

      def initialize(alert = [])
        @alert = alert
        @__xmlattr = {}
      end
    end

    # {}wasteMeterEntryType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] startDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] endDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] quantity
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] timesEmptied
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] averagePercentFull
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] cost
    #   @return [Object]
    # @!attribute [rw] disposalDestination
    #   @return [PortfolioManager::Xml::DisposalDestinationType]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    # @!attribute [rw] xmlattr_estimatedValue
    #   @return [SOAP::SOAPBoolean]
    class WasteMeterEntryType
      AttrEstimatedValue = XSD::QName.new(nil, "estimatedValue")

      attr_accessor :id
      attr_accessor :startDate
      attr_accessor :endDate
      attr_accessor :quantity
      attr_accessor :timesEmptied
      attr_accessor :averagePercentFull
      attr_accessor :cost
      attr_accessor :disposalDestination
      attr_accessor :audit

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_estimatedValue
        __xmlattr[AttrEstimatedValue]
      end

      def xmlattr_estimatedValue=(value)
        __xmlattr[AttrEstimatedValue] = value
      end

      def initialize(id = nil, startDate = nil, endDate = nil, quantity = nil, timesEmptied = nil, averagePercentFull = nil, cost = nil, disposalDestination = nil, audit = nil)
        @id = id
        @startDate = startDate
        @endDate = endDate
        @quantity = quantity
        @timesEmptied = timesEmptied
        @averagePercentFull = averagePercentFull
        @cost = cost
        @disposalDestination = disposalDestination
        @audit = audit
        @__xmlattr = {}
      end
    end

    # {}wasteMeterDataType
    # @!attribute [rw] wasteData
    #   @return [PortfolioManager::Xml::WasteMeterEntryType]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    class WasteMeterDataType
      attr_accessor :wasteData
      attr_accessor :links

      def initialize(wasteData = [], links = nil)
        @wasteData = wasteData
        @links = links
      end
    end

    # {}disposalDestinationType
    # @!attribute [rw] landfillPercentage
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] incinerationPercentage
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] wasteToEnergyPercentage
    #   @return [SOAP::SOAPDecimal]
    # @!attribute [rw] unknownDestPercentage
    #   @return [SOAP::SOAPDecimal]
    class DisposalDestinationType
      attr_accessor :landfillPercentage
      attr_accessor :incinerationPercentage
      attr_accessor :wasteToEnergyPercentage
      attr_accessor :unknownDestPercentage

      def initialize(landfillPercentage = nil, incinerationPercentage = nil, wasteToEnergyPercentage = nil, unknownDestPercentage = nil)
        @landfillPercentage = landfillPercentage
        @incinerationPercentage = incinerationPercentage
        @wasteToEnergyPercentage = wasteToEnergyPercentage
        @unknownDestPercentage = unknownDestPercentage
      end
    end

    # {}billboardMetricsType
    class BillboardMetricsType < ::Array
    end

    # {}billboardMetricType
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_dataType
    #   @return [SOAP::SOAPString]
    class BillboardMetricType
      AttrDataType = XSD::QName.new(nil, "dataType")
      AttrName = XSD::QName.new(nil, "name")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_dataType
        __xmlattr[AttrDataType]
      end

      def xmlattr_dataType=(value)
        __xmlattr[AttrDataType] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}heyType
    # @!attribute [rw] propertyInfo
    #   @return [PortfolioManager::Xml::HeyType::PropertyInfo]
    # @!attribute [rw] meter
    #   @return [PortfolioManager::Xml::HeyType::Meter]
    class HeyType

      # inner class for member: propertyInfo
      # {}propertyInfo
      # @!attribute [rw] postalCode
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] numberOfOccupants
      #   @return [SOAP::SOAPInt]
      # @!attribute [rw] grossFloorArea
      #   @return [PortfolioManager::Xml::GrossFloorAreaType]
      class PropertyInfo
        attr_accessor :postalCode
        attr_accessor :numberOfOccupants
        attr_accessor :grossFloorArea

        def initialize(postalCode = nil, numberOfOccupants = nil, grossFloorArea = nil)
          @postalCode = postalCode
          @numberOfOccupants = numberOfOccupants
          @grossFloorArea = grossFloorArea
        end
      end

      # inner class for member: meter
      # {}meter
      # @!attribute [rw] type
      #   @return [PortfolioManager::Xml::AllEnergyMetersType]
      # @!attribute [rw] unitOfMeasure
      #   @return [PortfolioManager::Xml::DesignUnitOfMeasure]
      # @!attribute [rw] meterData
      #   @return [PortfolioManager::Xml::HeyType::Meter::MeterData]
      class Meter

        # inner class for member: meterData
        # {}meterData
        class MeterData < ::Array
        end

        attr_accessor :type
        attr_accessor :unitOfMeasure
        attr_accessor :meterData

        def initialize(type = nil, unitOfMeasure = nil, meterData = nil)
          @type = type
          @unitOfMeasure = unitOfMeasure
          @meterData = meterData
        end
      end

      attr_accessor :propertyInfo
      attr_accessor :meter

      def initialize(propertyInfo = nil, meter = [])
        @propertyInfo = propertyInfo
        @meter = meter
      end
    end

    # {}reportMetrics
    class ReportMetrics < ::Array

      # {}group
      # @!attribute [rw] metrics
      #   @return [PortfolioManager::Xml::ReportMetrics::Group::Metrics]
      # @!attribute [rw] xmlattr_id
      #   @return [SOAP::SOAPLong]
      # @!attribute [rw] xmlattr_name
      #   @return [SOAP::SOAPString]
      class Group
        AttrId = XSD::QName.new(nil, "id")
        AttrName = XSD::QName.new(nil, "name")

        # inner class for member: metrics
        # {}metrics
        class Metrics < ::Array

          # {}metric
          # @!attribute [rw] xmlattr_id
          #   @return [SOAP::SOAPLong]
          # @!attribute [rw] xmlattr_name
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_description
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_dataType
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_uom
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_availableToCustomMetrics
          #   @return [SOAP::SOAPBoolean]
          class Metric
            AttrAvailableToCustomMetrics = XSD::QName.new(nil, "availableToCustomMetrics")
            AttrDataType = XSD::QName.new(nil, "dataType")
            AttrDescription = XSD::QName.new(nil, "description")
            AttrId = XSD::QName.new(nil, "id")
            AttrName = XSD::QName.new(nil, "name")
            AttrUom = XSD::QName.new(nil, "uom")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_id
              __xmlattr[AttrId]
            end

            def xmlattr_id=(value)
              __xmlattr[AttrId] = value
            end

            def xmlattr_name
              __xmlattr[AttrName]
            end

            def xmlattr_name=(value)
              __xmlattr[AttrName] = value
            end

            def xmlattr_description
              __xmlattr[AttrDescription]
            end

            def xmlattr_description=(value)
              __xmlattr[AttrDescription] = value
            end

            def xmlattr_dataType
              __xmlattr[AttrDataType]
            end

            def xmlattr_dataType=(value)
              __xmlattr[AttrDataType] = value
            end

            def xmlattr_uom
              __xmlattr[AttrUom]
            end

            def xmlattr_uom=(value)
              __xmlattr[AttrUom] = value
            end

            def xmlattr_availableToCustomMetrics
              __xmlattr[AttrAvailableToCustomMetrics]
            end

            def xmlattr_availableToCustomMetrics=(value)
              __xmlattr[AttrAvailableToCustomMetrics] = value
            end

            def initialize
              @__xmlattr = {}
            end
          end
        end

        attr_accessor :metrics

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_id
          __xmlattr[AttrId]
        end

        def xmlattr_id=(value)
          __xmlattr[AttrId] = value
        end

        def xmlattr_name
          __xmlattr[AttrName]
        end

        def xmlattr_name=(value)
          __xmlattr[AttrName] = value
        end

        def initialize(metrics = nil)
          @metrics = metrics
          @__xmlattr = {}
        end
      end
    end

    # {}reportTemplateType
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] templateType
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] metrics
    #   @return [PortfolioManager::Xml::ReportTemplateType::Metrics]
    # @!attribute [rw] reportId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class ReportTemplateType

      # inner class for member: metrics
      # {}metrics
      class Metrics < ::Array
      end

      attr_accessor :id
      attr_accessor :name
      attr_accessor :templateType
      attr_accessor :metrics
      attr_accessor :reportId
      attr_accessor :audit

      def initialize(id = nil, name = nil, templateType = nil, metrics = nil, reportId = nil, audit = nil)
        @id = id
        @name = name
        @templateType = templateType
        @metrics = metrics
        @reportId = reportId
        @audit = audit
      end
    end

    # {}report
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] type
    #   @return [PortfolioManager::Xml::ReportType]
    # @!attribute [rw] timeframe
    #   @return [PortfolioManager::Xml::TimeframeType]
    # @!attribute [rw] templateId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] templateName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] properties
    #   @return [PortfolioManager::Xml::Report::Properties]
    # @!attribute [rw] reportGenerationStatus
    #   @return [PortfolioManager::Xml::ReportStatusType]
    class Report

      # inner class for member: properties
      # {}properties
      class Properties < ::Array
      end

      attr_accessor :id
      attr_accessor :type
      attr_accessor :timeframe
      attr_accessor :templateId
      attr_accessor :templateName
      attr_accessor :properties
      attr_accessor :reportGenerationStatus

      def initialize(id = nil, type = nil, timeframe = nil, templateId = nil, templateName = nil, properties = nil, reportGenerationStatus = nil)
        @id = id
        @type = type
        @timeframe = timeframe
        @templateId = templateId
        @templateName = templateName
        @properties = properties
        @reportGenerationStatus = reportGenerationStatus
      end
    end

    # {}timeframeType
    # @!attribute [rw] currentPeriod
    #   @return [PortfolioManager::Xml::TimeframeType::CurrentPeriod]
    # @!attribute [rw] baselinePeriod
    #   @return [PortfolioManager::Xml::TimeframeType::BaselinePeriod]
    # @!attribute [rw] currentVsBaseline
    #   @return [PortfolioManager::Xml::TimeframeType::CurrentVsBaseline]
    # @!attribute [rw] singlePeriod
    #   @return [PortfolioManager::Xml::TimeframeType::SinglePeriod]
    # @!attribute [rw] compareCurrentPeriod
    #   @return [PortfolioManager::Xml::TimeframeType::CompareCurrentPeriod]
    # @!attribute [rw] compareBaselinePeriod
    #   @return [PortfolioManager::Xml::TimeframeType::CompareBaselinePeriod]
    # @!attribute [rw] twoPeriods
    #   @return [PortfolioManager::Xml::TimeframeType::TwoPeriods]
    # @!attribute [rw] dateRange
    #   @return [PortfolioManager::Xml::TimeframeType::DateRange]
    class TimeframeType

      # inner class for member: currentPeriod
      # {}currentPeriod
      # @!attribute [rw] meterType
      #   @return [PortfolioManager::Xml::MeterCategoryType]
      class CurrentPeriod
        attr_accessor :meterType

        def initialize(meterType = nil)
          @meterType = meterType
        end
      end

      # inner class for member: baselinePeriod
      # {}baselinePeriod
      # @!attribute [rw] meterType
      #   @return [PortfolioManager::Xml::MeterCategoryType]
      class BaselinePeriod
        attr_accessor :meterType

        def initialize(meterType = nil)
          @meterType = meterType
        end
      end

      # inner class for member: currentVsBaseline
      # {}currentVsBaseline
      # @!attribute [rw] meterType
      #   @return [PortfolioManager::Xml::MeterCategoryType]
      class CurrentVsBaseline
        attr_accessor :meterType

        def initialize(meterType = nil)
          @meterType = meterType
        end
      end

      # inner class for member: singlePeriod
      # {}singlePeriod
      # @!attribute [rw] periodEndingDate
      #   @return [PortfolioManager::Xml::Ped]
      class SinglePeriod
        attr_accessor :periodEndingDate

        def initialize(periodEndingDate = nil)
          @periodEndingDate = periodEndingDate
        end
      end

      # inner class for member: compareCurrentPeriod
      # {}compareCurrentPeriod
      # @!attribute [rw] meterType
      #   @return [PortfolioManager::Xml::MeterCategoryType]
      # @!attribute [rw] periodEndingDate
      #   @return [PortfolioManager::Xml::Ped]
      class CompareCurrentPeriod
        attr_accessor :meterType
        attr_accessor :periodEndingDate

        def initialize(meterType = nil, periodEndingDate = nil)
          @meterType = meterType
          @periodEndingDate = periodEndingDate
        end
      end

      # inner class for member: compareBaselinePeriod
      # {}compareBaselinePeriod
      # @!attribute [rw] meterType
      #   @return [PortfolioManager::Xml::MeterCategoryType]
      # @!attribute [rw] periodEndingDate
      #   @return [PortfolioManager::Xml::Ped]
      class CompareBaselinePeriod
        attr_accessor :meterType
        attr_accessor :periodEndingDate

        def initialize(meterType = nil, periodEndingDate = nil)
          @meterType = meterType
          @periodEndingDate = periodEndingDate
        end
      end

      # inner class for member: twoPeriods
      # {}twoPeriods
      # @!attribute [rw] periodEndingDateOne
      #   @return [PortfolioManager::Xml::Ped]
      # @!attribute [rw] periodEndingDateTwo
      #   @return [PortfolioManager::Xml::Ped]
      class TwoPeriods
        attr_accessor :periodEndingDateOne
        attr_accessor :periodEndingDateTwo

        def initialize(periodEndingDateOne = nil, periodEndingDateTwo = nil)
          @periodEndingDateOne = periodEndingDateOne
          @periodEndingDateTwo = periodEndingDateTwo
        end
      end

      # inner class for member: dateRange
      # {}dateRange
      # @!attribute [rw] fromPeriodEndingDate
      #   @return [PortfolioManager::Xml::Ped]
      # @!attribute [rw] toPeriodEndingDate
      #   @return [PortfolioManager::Xml::Ped]
      # @!attribute [rw] interval
      #   @return [PortfolioManager::Xml::ReportingIntervalType]
      class DateRange
        attr_accessor :fromPeriodEndingDate
        attr_accessor :toPeriodEndingDate
        attr_accessor :interval

        def initialize(fromPeriodEndingDate = nil, toPeriodEndingDate = nil, interval = nil)
          @fromPeriodEndingDate = fromPeriodEndingDate
          @toPeriodEndingDate = toPeriodEndingDate
          @interval = interval
        end
      end

      attr_accessor :currentPeriod
      attr_accessor :baselinePeriod
      attr_accessor :currentVsBaseline
      attr_accessor :singlePeriod
      attr_accessor :compareCurrentPeriod
      attr_accessor :compareBaselinePeriod
      attr_accessor :twoPeriods
      attr_accessor :dateRange

      def initialize(currentPeriod = nil, baselinePeriod = nil, currentVsBaseline = nil, singlePeriod = nil, compareCurrentPeriod = nil, compareBaselinePeriod = nil, twoPeriods = nil, dateRange = nil)
        @currentPeriod = currentPeriod
        @baselinePeriod = baselinePeriod
        @currentVsBaseline = currentVsBaseline
        @singlePeriod = singlePeriod
        @compareCurrentPeriod = compareCurrentPeriod
        @compareBaselinePeriod = compareBaselinePeriod
        @twoPeriods = twoPeriods
        @dateRange = dateRange
      end
    end

    # {}ped
    # @!attribute [rw] month
    #   @return [SOAP::SOAPNonNegativeInteger]
    # @!attribute [rw] year
    #   @return [SOAP::SOAPNonNegativeInteger]
    class Ped
      attr_accessor :month
      attr_accessor :year

      def initialize(month = nil, year = nil)
        @month = month
        @year = year
      end
    end

    # {}reportStatusDef
    # @!attribute [rw] status
    #   @return [PortfolioManager::Xml::ReportStatusType]
    # @!attribute [rw] description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] generationStartDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] generationEndDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] submittedDate
    #   @return [SOAP::SOAPDateTime]
    class ReportStatusDef
      attr_accessor :status
      attr_accessor :description
      attr_accessor :generationStartDate
      attr_accessor :generationEndDate
      attr_accessor :submittedDate

      def initialize(status = nil, description = nil, generationStartDate = nil, generationEndDate = nil, submittedDate = nil)
        @status = status
        @description = description
        @generationStartDate = generationStartDate
        @generationEndDate = generationEndDate
        @submittedDate = submittedDate
      end
    end

    # {}dataResponse
    # @!attribute [rw] dataRequestId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] timeframe
    #   @return [PortfolioManager::Xml::TimeframeType]
    # @!attribute [rw] properties
    #   @return [PortfolioManager::Xml::DataResponse::Properties]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    class DataResponse
      AttrId = XSD::QName.new(nil, "id")

      # inner class for member: properties
      # {}properties
      class Properties < ::Array
      end

      attr_accessor :dataRequestId
      attr_accessor :timeframe
      attr_accessor :properties

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def initialize(dataRequestId = nil, timeframe = nil, properties = nil)
        @dataRequestId = dataRequestId
        @timeframe = timeframe
        @properties = properties
        @__xmlattr = {}
      end
    end

    # {}dataRequest
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] requesterDetails
    #   @return [PortfolioManager::Xml::DataRequest::RequesterDetails]
    # @!attribute [rw] instructions
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] timeframe
    #   @return [PortfolioManager::Xml::TimeframeType]
    # @!attribute [rw] locations
    #   @return [PortfolioManager::Xml::DataRequest::Locations]
    # @!attribute [rw] dataRequestStatus
    #   @return [PortfolioManager::Xml::DataRequestStatusType]
    # @!attribute [rw] dataRequestAcceptedBy
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] dataRequestAcceptedDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    class DataRequest
      AttrId = XSD::QName.new(nil, "id")

      # inner class for member: requesterDetails
      # {}requesterDetails
      # @!attribute [rw] firstName
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] lastName
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] email
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] phone
      #   @return [SOAP::SOAPString]
      class RequesterDetails
        attr_accessor :firstName
        attr_accessor :lastName
        attr_accessor :email
        attr_accessor :phone

        def initialize(firstName = nil, lastName = nil, email = nil, phone = nil)
          @firstName = firstName
          @lastName = lastName
          @email = email
          @phone = phone
        end
      end

      # inner class for member: locations
      # {}locations
      class Locations < ::Array

        # {}location
        # @!attribute [rw] xmlattr_country
        #   @return [SOAP::SOAPString]
        # @!attribute [rw] xmlattr_state
        #   @return [SOAP::SOAPString]
        class Location
          AttrCountry = XSD::QName.new(nil, "country")
          AttrState = XSD::QName.new(nil, "state")

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_country
            __xmlattr[AttrCountry]
          end

          def xmlattr_country=(value)
            __xmlattr[AttrCountry] = value
          end

          def xmlattr_state
            __xmlattr[AttrState]
          end

          def xmlattr_state=(value)
            __xmlattr[AttrState] = value
          end

          def initialize
            @__xmlattr = {}
          end
        end
      end

      attr_accessor :name
      attr_accessor :requesterDetails
      attr_accessor :instructions
      attr_accessor :timeframe
      attr_accessor :locations
      attr_accessor :dataRequestStatus
      attr_accessor :dataRequestAcceptedBy
      attr_accessor :dataRequestAcceptedDate

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def initialize(name = nil, requesterDetails = nil, instructions = nil, timeframe = nil, locations = nil, dataRequestStatus = nil, dataRequestAcceptedBy = nil, dataRequestAcceptedDate = nil)
        @name = name
        @requesterDetails = requesterDetails
        @instructions = instructions
        @timeframe = timeframe
        @locations = locations
        @dataRequestStatus = dataRequestStatus
        @dataRequestAcceptedBy = dataRequestAcceptedBy
        @dataRequestAcceptedDate = dataRequestAcceptedDate
        @__xmlattr = {}
      end
    end

    # {}statusType
    class StatusType < ::String
      Error = new("Error")
      Ok = new("Ok")
    end

    # {}primaryFunctionType
    class PrimaryFunctionType < ::String
      AdultEducation = new("Adult Education")
      AmbulatorySurgicalCenter = new("Ambulatory Surgical Center")
      Aquarium = new("Aquarium")
      BankBranch = new("Bank Branch")
      BarNightclub = new("Bar/Nightclub")
      Barracks = new("Barracks")
      BowlingAlley = new("Bowling Alley")
      Casino = new("Casino")
      CollegeUniversity = new("College/University")
      ConvenienceStoreWithGasStation = new("Convenience Store with Gas Station")
      ConvenienceStoreWithoutGasStation = new("Convenience Store without Gas Station")
      ConventionCenter = new("Convention Center")
      Courthouse = new("Courthouse")
      DataCenter = new("Data Center")
      DistributionCenter = new("Distribution Center")
      DrinkingWaterTreatment38Distribution = new("Drinking Water Treatment &#38; Distribution")
      ElectricVehicleChargingStation = new("Electric Vehicle Charging Station")
      EnclosedMall = new("Enclosed Mall")
      EnergyPowerStation = new("Energy/Power Station")
      FastFoodRestaurant = new("Fast Food Restaurant")
      FinancialOffice = new("Financial Office")
      FireStation = new("Fire Station")
      FitnessCenterHealthClubGym = new("Fitness Center/Health Club/Gym")
      FoodSales = new("Food Sales")
      FoodService = new("Food Service")
      HospitalGeneralMedical38Surgical = new("Hospital (General Medical &#38; Surgical)")
      Hotel = new("Hotel")
      IceCurlingRink = new("Ice/Curling Rink")
      IndoorArena = new("Indoor Arena")
      K12School = new("K-12 School")
      Laboratory = new("Laboratory")
      Library = new("Library")
      LifestyleCenter = new("Lifestyle Center")
      MailingCenterPostOffice = new("Mailing Center/Post Office")
      ManufacturingIndustrialPlant = new("Manufacturing/Industrial Plant")
      MedicalOffice = new("Medical Office")
      MixedUseProperty = new("Mixed Use Property")
      MovieTheater = new("Movie Theater")
      MultifamilyHousing = new("Multifamily Housing")
      Museum = new("Museum")
      NonRefrigeratedWarehouse = new("Non-Refrigerated Warehouse")
      Office = new("Office")
      Other = new("Other")
      OtherEducation = new("Other - Education")
      OtherEntertainmentPublicAssembly = new("Other - Entertainment/Public Assembly")
      OtherLodgingResidential = new("Other - Lodging/Residential")
      OtherMall = new("Other - Mall")
      OtherPublicServices = new("Other - Public Services")
      OtherRecreation = new("Other - Recreation")
      OtherRestaurantBar = new("Other - Restaurant/Bar")
      OtherServices = new("Other - Services")
      OtherSpecialtyHospital = new("Other/Specialty Hospital")
      OtherStadium = new("Other - Stadium")
      OtherTechnologyScience = new("Other - Technology/Science")
      OtherUtility = new("Other - Utility")
      OutpatientRehabilitationPhysicalTherapy = new("Outpatient Rehabilitation/Physical Therapy")
      Parking = new("Parking")
      PerformingArts = new("Performing Arts")
      PersonalServicesHealthBeautyDryCleaningEtc = new("Personal Services (Health/Beauty, Dry Cleaning, etc)")
      PoliceStation = new("Police Station")
      PreSchoolDaycare = new("Pre-school/Daycare")
      PrisonIncarceration = new("Prison/Incarceration")
      RaceTrack = new("Race Track")
      RefrigeratedWarehouse = new("Refrigerated Warehouse")
      RepairServicesVehicleShoeLocksmithEtc = new("Repair Services (Vehicle, Shoe, Locksmith, etc)")
      ResidenceHallDormitory = new("Residence Hall/Dormitory")
      ResidentialCareFacility = new("Residential Care Facility")
      Restaurant = new("Restaurant")
      RetailStore = new("Retail Store")
      RollerRink = new("Roller Rink")
      SelfStorageFacility = new("Self-Storage Facility")
      SeniorLivingCommunity = new("Senior Living Community")
      SingleFamilyHome = new("Single Family Home")
      SocialMeetingHall = new("Social/Meeting Hall")
      StadiumClosed = new("Stadium (Closed)")
      StadiumOpen = new("Stadium (Open)")
      StripMall = new("Strip Mall")
      SupermarketGroceryStore = new("Supermarket/Grocery Store")
      SwimmingPool = new("Swimming Pool")
      TransportationTerminalStation = new("Transportation Terminal/Station")
      UrgentCareClinicOtherOutpatient = new("Urgent Care/Clinic/Other Outpatient")
      VehicleDealership = new("Vehicle Dealership")
      VeterinaryOffice = new("Veterinary Office")
      VocationalSchool = new("Vocational School")
      WastewaterTreatmentPlant = new("Wastewater Treatment Plant")
      WholesaleClubSupercenter = new("Wholesale Club/Supercenter")
      WorshipFacility = new("Worship Facility")
      Zoo = new("Zoo")
    end

    # {}OccupancyType
    class OccupancyType < ::String
      C_0 = new("0")
      C_10 = new("10")
      C_100 = new("100")
      C_15 = new("15")
      C_20 = new("20")
      C_25 = new("25")
      C_30 = new("30")
      C_35 = new("35")
      C_40 = new("40")
      C_45 = new("45")
      C_5 = new("5")
      C_50 = new("50")
      C_55 = new("55")
      C_60 = new("60")
      C_65 = new("65")
      C_70 = new("70")
      C_75 = new("75")
      C_80 = new("80")
      C_85 = new("85")
      C_90 = new("90")
      C_95 = new("95")
    end

    # {}constructionStatusType
    class ConstructionStatusType < ::String
      Existing = new("Existing")
      Project = new("Project")
      Test = new("Test")
    end

    # {}countryList
    class CountryList < ::String
      AD = new("AD")
      AE = new("AE")
      AF = new("AF")
      AG = new("AG")
      AI = new("AI")
      AL = new("AL")
      AM = new("AM")
      AO = new("AO")
      AQ = new("AQ")
      AR = new("AR")
      AT = new("AT")
      AU = new("AU")
      AW = new("AW")
      AX = new("AX")
      AZ = new("AZ")
      BA = new("BA")
      BB = new("BB")
      BD = new("BD")
      BE = new("BE")
      BF = new("BF")
      BG = new("BG")
      BH = new("BH")
      BI = new("BI")
      BJ = new("BJ")
      BL = new("BL")
      BM = new("BM")
      BN = new("BN")
      BO = new("BO")
      BQ = new("BQ")
      BR = new("BR")
      BS = new("BS")
      BT = new("BT")
      BV = new("BV")
      BW = new("BW")
      BY = new("BY")
      BZ = new("BZ")
      CA = new("CA")
      CC = new("CC")
      CD = new("CD")
      CF = new("CF")
      CG = new("CG")
      CH = new("CH")
      CI = new("CI")
      CK = new("CK")
      CL = new("CL")
      CM = new("CM")
      CN = new("CN")
      CO = new("CO")
      CR = new("CR")
      CU = new("CU")
      CV = new("CV")
      CW = new("CW")
      CX = new("CX")
      CY = new("CY")
      CZ = new("CZ")
      C_IO = new("IO")
      DE = new("DE")
      DJ = new("DJ")
      DK = new("DK")
      DM = new("DM")
      DO = new("DO")
      DZ = new("DZ")
      EC = new("EC")
      EE = new("EE")
      EG = new("EG")
      EH = new("EH")
      ER = new("ER")
      ES = new("ES")
      ET = new("ET")
      FI = new("FI")
      FJ = new("FJ")
      FK = new("FK")
      FM = new("FM")
      FO = new("FO")
      FR = new("FR")
      GA = new("GA")
      GB = new("GB")
      GD = new("GD")
      GE = new("GE")
      GF = new("GF")
      GG = new("GG")
      GH = new("GH")
      GI = new("GI")
      GL = new("GL")
      GM = new("GM")
      GN = new("GN")
      GP = new("GP")
      GQ = new("GQ")
      GR = new("GR")
      GS = new("GS")
      GT = new("GT")
      GW = new("GW")
      GY = new("GY")
      HK = new("HK")
      HM = new("HM")
      HN = new("HN")
      HR = new("HR")
      HT = new("HT")
      HU = new("HU")
      ID = new("ID")
      IE = new("IE")
      IL = new("IL")
      IM = new("IM")
      IN = new("IN")
      IQ = new("IQ")
      IR = new("IR")
      IS = new("IS")
      IT = new("IT")
      JE = new("JE")
      JM = new("JM")
      JO = new("JO")
      JP = new("JP")
      KE = new("KE")
      KG = new("KG")
      KH = new("KH")
      KI = new("KI")
      KM = new("KM")
      KN = new("KN")
      KP = new("KP")
      KR = new("KR")
      KW = new("KW")
      KY = new("KY")
      KZ = new("KZ")
      LA = new("LA")
      LB = new("LB")
      LC = new("LC")
      LI = new("LI")
      LK = new("LK")
      LR = new("LR")
      LS = new("LS")
      LT = new("LT")
      LU = new("LU")
      LV = new("LV")
      LY = new("LY")
      MA = new("MA")
      MC = new("MC")
      MD = new("MD")
      ME = new("ME")
      MF = new("MF")
      MG = new("MG")
      MK = new("MK")
      ML = new("ML")
      MM = new("MM")
      MN = new("MN")
      MO = new("MO")
      MQ = new("MQ")
      MR = new("MR")
      MS = new("MS")
      MT = new("MT")
      MU = new("MU")
      MV = new("MV")
      MW = new("MW")
      MX = new("MX")
      MY = new("MY")
      MZ = new("MZ")
      NA = new("NA")
      NC = new("NC")
      NE = new("NE")
      NF = new("NF")
      NG = new("NG")
      NI = new("NI")
      NL = new("NL")
      NO = new("NO")
      NP = new("NP")
      NR = new("NR")
      NU = new("NU")
      NZ = new("NZ")
      OM = new("OM")
      PA = new("PA")
      PE = new("PE")
      PF = new("PF")
      PG = new("PG")
      PH = new("PH")
      PK = new("PK")
      PL = new("PL")
      PM = new("PM")
      PN = new("PN")
      PS = new("PS")
      PT = new("PT")
      PW = new("PW")
      PY = new("PY")
      QA = new("QA")
      RE = new("RE")
      RO = new("RO")
      RS = new("RS")
      RU = new("RU")
      RW = new("RW")
      SA = new("SA")
      SB = new("SB")
      SC = new("SC")
      SD = new("SD")
      SE = new("SE")
      SG = new("SG")
      SH = new("SH")
      SI = new("SI")
      SJ = new("SJ")
      SK = new("SK")
      SL = new("SL")
      SM = new("SM")
      SN = new("SN")
      SO = new("SO")
      SR = new("SR")
      SS = new("SS")
      ST = new("ST")
      SV = new("SV")
      SX = new("SX")
      SY = new("SY")
      SZ = new("SZ")
      TC = new("TC")
      TD = new("TD")
      TF = new("TF")
      TG = new("TG")
      TH = new("TH")
      TJ = new("TJ")
      TK = new("TK")
      TL = new("TL")
      TM = new("TM")
      TN = new("TN")
      TO = new("TO")
      TR = new("TR")
      TT = new("TT")
      TV = new("TV")
      TW = new("TW")
      TZ = new("TZ")
      UA = new("UA")
      UG = new("UG")
      US = new("US")
      UY = new("UY")
      UZ = new("UZ")
      VA = new("VA")
      VC = new("VC")
      VE = new("VE")
      VG = new("VG")
      VN = new("VN")
      VU = new("VU")
      WF = new("WF")
      WS = new("WS")
      YE = new("YE")
      YT = new("YT")
      ZA = new("ZA")
      ZM = new("ZM")
      ZW = new("ZW")
    end

    # {}grossFloorAreaUnitsType
    class GrossFloorAreaUnitsType < ::String
      SquareFeet = new("Square Feet")
      SquareMeters = new("Square Meters")
    end

    # {}yesNo
    class YesNo < ::String
      No = new("No")
      Yes = new("Yes")
    end

    # {}amountOfLaundryProcessedAnnuallyUnitsType
    class AmountOfLaundryProcessedAnnuallyUnitsType < ::String
      Kilogram = new("Kilogram")
      Pounds = new("pounds")
      ShortTons = new("short tons")
    end

    # {}PlantDesignFlowRateUnitsType
    class PlantDesignFlowRateUnitsType < ::String
      CubicMetersPerDay = new("Cubic Meters per Day")
      MillionGallonsPerDay = new("Million Gallons per Day")
    end

    # {}customUnitsType
    class CustomUnitsType < ::String
      Feet = new("Feet")
      GallonsUK = new("Gallons (UK)")
      GallonsUS = new("Gallons (US)")
      Kilogram = new("Kilogram")
      Meters = new("Meters")
      Other = new("Other")
      Pounds = new("Pounds")
      SquareFeet = new("Square Feet")
      SquareMeters = new("Square Meters")
      TonnesMetric = new("Tonnes (metric)")
      TonsShort = new("Tons (short)")
    end

    # {}lengthUnitsType
    class LengthUnitsType < ::String
      Feet = new("Feet")
      Meters = new("Meters")
    end

    # {}decimalTwoPrecisionOrEmptyString
    #  any of decimalTwoPrecision emptyString
    class DecimalTwoPrecisionOrEmptyString < ::String
    end

    # {}irrigationAreaUnitsType
    class IrrigationAreaUnitsType < ::String
      Acres = new("Acres")
      C_ = new("")
      SquareFeet = new("Square Feet")
      SquareMeters = new("Square Meters")
    end

    # {}emptyString
    class EmptyString < ::String
      C_ = new("")
    end

    # {}systemDeterminedString
    class SystemDeterminedString < ::String
      SystemDetermined = new("System Determined")
    end

    # {}acceptRejectType
    class AcceptRejectType < ::String
      Accept = new("Accept")
      Reject = new("Reject")
    end

    # {}shareLevelType
    class ShareLevelType < ::String
      Read = new("Read")
      ReadWrite = new("Read Write")
    end

    # {}typeOfMeter
    class TypeOfMeter < ::String
      AverageInfluentFlow = new("Average Influent Flow")
      CoalAnthracite = new("Coal Anthracite")
      CoalBituminous = new("Coal Bituminous")
      Coke = new("Coke")
      Diesel = new("Diesel")
      DistrictChilledWaterAbsorptionChillerUsingNaturalGas = new("District Chilled Water - Absorption Chiller using Natural Gas")
      DistrictChilledWaterElectricDrivenChiller = new("District Chilled Water - Electric-Driven Chiller")
      DistrictChilledWaterEngineDrivenChillerUsingNaturalGas = new("District Chilled Water - Engine-Driven Chiller using Natural Gas")
      DistrictChilledWaterOther = new("District Chilled Water - Other")
      DistrictHotWater = new("District Hot Water")
      DistrictSteam = new("District Steam")
      Electric = new("Electric")
      ElectricOnSiteSolar = new("Electric on Site Solar")
      ElectricOnSiteWind = new("Electric on Site Wind")
      FuelOilNo1 = new("Fuel Oil No 1")
      FuelOilNo2 = new("Fuel Oil No 2")
      FuelOilNo4 = new("Fuel Oil No 4")
      FuelOilNo5Or6 = new("Fuel Oil No 5 or 6")
      ITEquipmentInputEnergyMetersOnEachPieceOfEquipment = new("IT Equipment Input Energy (meters on each piece of equipment)")
      Kerosene = new("Kerosene")
      MunicipallySuppliedPotableWaterIndoor = new("Municipally Supplied Potable Water - Indoor")
      MunicipallySuppliedPotableWaterMixedIndoorOutdoor = new("Municipally Supplied Potable Water - Mixed Indoor/Outdoor")
      MunicipallySuppliedPotableWaterOutdoor = new("Municipally Supplied Potable Water - Outdoor")
      MunicipallySuppliedReclaimedWaterIndoor = new("Municipally Supplied Reclaimed Water - Indoor")
      MunicipallySuppliedReclaimedWaterMixedIndoorOutdoor = new("Municipally Supplied Reclaimed Water - Mixed Indoor/Outdoor")
      MunicipallySuppliedReclaimedWaterOutdoor = new("Municipally Supplied Reclaimed Water - Outdoor")
      NaturalGas = new("Natural Gas")
      OtherEnergy = new("Other (Energy)")
      OtherIndoor = new("Other - Indoor")
      OtherMixedIndoorOutdoorWater = new("Other - Mixed Indoor/Outdoor (Water)")
      OtherOutdoor = new("Other - Outdoor")
      PowerDistributionUnitPDUInputEnergy = new("Power Distribution Unit (PDU) Input Energy")
      PowerDistributionUnitPDUOutputEnergy = new("Power Distribution Unit (PDU) Output Energy")
      Propane = new("Propane")
      UninterruptiblePowerSupplyUPSOutputEnergy = new("Uninterruptible Power Supply (UPS) Output Energy")
      WellWaterIndoor = new("Well Water - Indoor")
      WellWaterMixedIndoorOutdoor = new("Well Water - Mixed Indoor/Outdoor")
      WellWaterOutdoor = new("Well Water - Outdoor")
      Wood = new("Wood")
    end

    # {}wasteMeterType
    class WasteMeterType < ::String
      CompostedCardboardCorrugatedContainers = new("Composted - Cardboard/Corrugated Containers")
      CompostedCompostableMixedOther = new("Composted - Compostable - Mixed/Other")
      CompostedFoodFoodScraps = new("Composted - Food/Food Scraps")
      CompostedGrassYardTrimmings = new("Composted - Grass/Yard Trimmings")
      CompostedOther = new("Composted - Other")
      CompostedPaperCopyPaper = new("Composted - Paper - Copy Paper")
      DisposedAppliances = new("Disposed - Appliances")
      DisposedBatteries = new("Disposed - Batteries")
      DisposedBeverageContainersAluminumGlassPlastic = new("Disposed - Beverage Containers (aluminum, glass, plastic)")
      DisposedBuildingMaterialsCarpetCarpetPadding = new("Disposed - Building Materials - Carpet/Carpet Padding")
      DisposedBuildingMaterialsConcrete = new("Disposed - Building Materials - Concrete")
      DisposedBuildingMaterialsMixedOther = new("Disposed - Building Materials - Mixed/Other")
      DisposedBuildingMaterialsSteel = new("Disposed - Building Materials - Steel")
      DisposedBuildingMaterialsWood = new("Disposed - Building Materials - Wood")
      DisposedCardboardCorrugatedContainers = new("Disposed - Cardboard/Corrugated Containers")
      DisposedCompostableMixedOther = new("Disposed - Compostable - Mixed/Other")
      DisposedElectronics = new("Disposed - Electronics")
      DisposedFatsOilsGrease = new("Disposed - Fats/Oils/Grease")
      DisposedFoodFoodScraps = new("Disposed - Food/Food Scraps")
      DisposedFurniture = new("Disposed - Furniture")
      DisposedGlass = new("Disposed - Glass")
      DisposedGrassYardTrimmings = new("Disposed - Grass/Yard Trimmings")
      DisposedLampsLightBulbs = new("Disposed - Lamps/Light Bulbs")
      DisposedMixedRecyclables = new("Disposed - Mixed Recyclables")
      DisposedOfficeSupplies = new("Disposed - Office Supplies")
      DisposedOther = new("Disposed - Other")
      DisposedPallets = new("Disposed - Pallets")
      DisposedPaperBooks = new("Disposed - Paper - Books")
      DisposedPaperCopyPaper = new("Disposed - Paper - Copy Paper")
      DisposedPaperMixed = new("Disposed - Paper - Mixed")
      DisposedPlasticsMixed = new("Disposed - Plastics - Mixed")
      DisposedPlasticsWrapFilm = new("Disposed - Plastics - Wrap/Film")
      DisposedRegulatedMedicalWaste = new("Disposed - Regulated Medical Waste")
      DisposedTextilesClothing = new("Disposed - Textiles/Clothing")
      DisposedTrash = new("Disposed - Trash")
      DonatedReusedAppliances = new("Donated/Reused - Appliances")
      DonatedReusedBuildingMaterialsCarpetCarpetPadding = new("Donated/Reused - Building Materials - Carpet/Carpet Padding")
      DonatedReusedBuildingMaterialsConcrete = new("Donated/Reused - Building Materials - Concrete")
      DonatedReusedBuildingMaterialsMixedOther = new("Donated/Reused - Building Materials - Mixed/Other")
      DonatedReusedBuildingMaterialsSteel = new("Donated/Reused - Building Materials - Steel")
      DonatedReusedBuildingMaterialsWood = new("Donated/Reused - Building Materials - Wood")
      DonatedReusedCardboardCorrugatedContainers = new("Donated/Reused - Cardboard/Corrugated Containers")
      DonatedReusedElectronics = new("Donated/Reused - Electronics")
      DonatedReusedFoodFoodScraps = new("Donated/Reused - Food/Food Scraps")
      DonatedReusedFurniture = new("Donated/Reused - Furniture")
      DonatedReusedGlass = new("Donated/Reused - Glass")
      DonatedReusedOfficeSupplies = new("Donated/Reused - Office Supplies")
      DonatedReusedOther = new("Donated/Reused - Other")
      DonatedReusedPallets = new("Donated/Reused - Pallets")
      DonatedReusedPaperBooks = new("Donated/Reused - Paper - Books")
      DonatedReusedTextilesClothing = new("Donated/Reused - Textiles/Clothing")
      RecycledAppliances = new("Recycled - Appliances")
      RecycledBatteries = new("Recycled - Batteries")
      RecycledBeverageContainersAluminumGlassPlastic = new("Recycled - Beverage Containers (aluminum, glass, plastic)")
      RecycledBuildingMaterialsCarpetCarpetPadding = new("Recycled - Building Materials - Carpet/Carpet Padding")
      RecycledBuildingMaterialsConcrete = new("Recycled - Building Materials - Concrete")
      RecycledBuildingMaterialsMixedOther = new("Recycled - Building Materials - Mixed/Other")
      RecycledBuildingMaterialsSteel = new("Recycled - Building Materials - Steel")
      RecycledBuildingMaterialsWood = new("Recycled - Building Materials - Wood")
      RecycledCardboardCorrugatedContainers = new("Recycled - Cardboard/Corrugated Containers")
      RecycledElectronics = new("Recycled - Electronics")
      RecycledFatsOilsGrease = new("Recycled - Fats/Oils/Grease")
      RecycledGlass = new("Recycled - Glass")
      RecycledLampsLightBulbs = new("Recycled - Lamps/Light Bulbs")
      RecycledMixedRecyclables = new("Recycled - Mixed Recyclables")
      RecycledOther = new("Recycled - Other")
      RecycledPallets = new("Recycled - Pallets")
      RecycledPaperBooks = new("Recycled - Paper - Books")
      RecycledPaperCopyPaper = new("Recycled - Paper - Copy Paper")
      RecycledPaperMixed = new("Recycled - Paper - Mixed")
      RecycledPlasticsMixed = new("Recycled - Plastics - Mixed")
      RecycledPlasticsWrapFilm = new("Recycled - Plastics - Wrap/Film")
      RecycledTextilesClothing = new("Recycled - Textiles/Clothing")
    end

    # {}primaryBusinessType
    class PrimaryBusinessType < ::String
      ArchitectureDesignFirm = new("Architecture/Design Firm")
      BankingFinancial = new("Banking/Financial")
      CommercialRealEstate = new("Commercial Real Estate")
      CongregationFaithBasedOrganization = new("Congregation/Faith-Based Organization")
      DataCenter = new("Data Center")
      DrinkingWaterTreatmentDistribution = new("Drinking Water Treatment/Distribution")
      Education = new("Education")
      EnergyEfficiencyProgram = new("Energy Efficiency Program")
      EntertainmentRecreation = new("Entertainment/Recreation")
      FoodService = new("Food Service")
      GovernmentFederalUS = new("Government: Federal (U.S.)")
      GovernmentLocalUS = new("Government: Local (U.S.)")
      GovernmentOutsideUS = new("Government: Outside U.S.")
      GovernmentStateUS = new("Government: State (U.S.)")
      Healthcare = new("Healthcare")
      Hospitality = new("Hospitality")
      LegalServices = new("Legal Services")
      ManufacturingIndustrial = new("Manufacturing/Industrial")
      Media = new("Media")
      MultifamilyHousing = new("Multifamily Housing")
      Other = new("Other")
      Retail = new("Retail")
      SeniorCare = new("Senior Care")
      ServiceAndProductProviderConsultant = new("Service and Product Provider/Consultant")
      Transportation = new("Transportation")
      Utility = new("Utility")
      WastewaterTreatment = new("Wastewater Treatment")
    end

    # {}typeOfEnergyStarPartner
    class TypeOfEnergyStarPartner < ::String
      Associations = new("Associations")
      OrganizationsThatOwnManageLeaseBuildingsAndPlants = new("Organizations that Own/Manage/Lease Buildings and Plants")
      Other = new("Other")
      ServiceAndProductProviders = new("Service and Product Providers")
      SmallBusinesses = new("Small Businesses")
      UtilitiesAndEnergyEfficiencyProgramSponsors = new("Utilities and Energy Efficiency Program Sponsors")
    end

    # {}dataType
    class DataType < ::String
      C_Numeric = new("numeric")
      C_String = new("string")
      Date = new("date")
    end

    # {}periodType
    class PeriodType < ::String
      BASELINE = new("BASELINE")
      CURRENT = new("CURRENT")
    end

    # {}categoryType
    class CategoryType < ::String
      BehavioralOutreach = new("Behavioral/Outreach")
      FanSystemsStage4 = new("Fan Systems (Stage 4)")
      Heating38CoolingPlantStage5 = new("Heating &#38; Cooling Plant (Stage 5)")
      LightingStage2 = new("Lighting (Stage 2)")
      LoadReductionsStage3 = new("Load Reductions (Stage 3)")
      OtherTechnologiesStrategies = new("Other Technologies/Strategies")
      RecommissioningStage1 = new("Recommissioning (Stage 1)")
    end

    # {}targetTypeScoreValuesType
    class TargetTypeScoreValuesType < ::String
      C_1 = new("1")
      C_10 = new("10")
      C_100 = new("100")
      C_11 = new("11")
      C_12 = new("12")
      C_13 = new("13")
      C_14 = new("14")
      C_15 = new("15")
      C_16 = new("16")
      C_17 = new("17")
      C_18 = new("18")
      C_19 = new("19")
      C_2 = new("2")
      C_20 = new("20")
      C_21 = new("21")
      C_22 = new("22")
      C_23 = new("23")
      C_24 = new("24")
      C_25 = new("25")
      C_26 = new("26")
      C_27 = new("27")
      C_28 = new("28")
      C_29 = new("29")
      C_3 = new("3")
      C_30 = new("30")
      C_31 = new("31")
      C_32 = new("32")
      C_33 = new("33")
      C_34 = new("34")
      C_35 = new("35")
      C_36 = new("36")
      C_37 = new("37")
      C_38 = new("38")
      C_39 = new("39")
      C_4 = new("4")
      C_40 = new("40")
      C_41 = new("41")
      C_42 = new("42")
      C_43 = new("43")
      C_44 = new("44")
      C_45 = new("45")
      C_46 = new("46")
      C_47 = new("47")
      C_48 = new("48")
      C_49 = new("49")
      C_5 = new("5")
      C_50 = new("50")
      C_51 = new("51")
      C_52 = new("52")
      C_53 = new("53")
      C_54 = new("54")
      C_55 = new("55")
      C_56 = new("56")
      C_57 = new("57")
      C_58 = new("58")
      C_59 = new("59")
      C_6 = new("6")
      C_60 = new("60")
      C_61 = new("61")
      C_62 = new("62")
      C_63 = new("63")
      C_64 = new("64")
      C_65 = new("65")
      C_66 = new("66")
      C_67 = new("67")
      C_68 = new("68")
      C_69 = new("69")
      C_7 = new("7")
      C_70 = new("70")
      C_71 = new("71")
      C_72 = new("72")
      C_73 = new("73")
      C_74 = new("74")
      C_75 = new("75")
      C_76 = new("76")
      C_77 = new("77")
      C_78 = new("78")
      C_79 = new("79")
      C_8 = new("8")
      C_80 = new("80")
      C_81 = new("81")
      C_82 = new("82")
      C_83 = new("83")
      C_84 = new("84")
      C_85 = new("85")
      C_86 = new("86")
      C_87 = new("87")
      C_88 = new("88")
      C_89 = new("89")
      C_9 = new("9")
      C_90 = new("90")
      C_91 = new("91")
      C_92 = new("92")
      C_93 = new("93")
      C_94 = new("94")
      C_95 = new("95")
      C_96 = new("96")
      C_97 = new("97")
      C_98 = new("98")
      C_99 = new("99")
    end

    # {}targetTypePercentageValuesType
    class TargetTypePercentageValuesType < ::String
      C_0 = new("0")
      C_1 = new("1")
      C_10 = new("10")
      C_100 = new("100")
      C_11 = new("11")
      C_12 = new("12")
      C_13 = new("13")
      C_14 = new("14")
      C_15 = new("15")
      C_16 = new("16")
      C_17 = new("17")
      C_18 = new("18")
      C_19 = new("19")
      C_2 = new("2")
      C_20 = new("20")
      C_21 = new("21")
      C_22 = new("22")
      C_23 = new("23")
      C_24 = new("24")
      C_25 = new("25")
      C_26 = new("26")
      C_27 = new("27")
      C_28 = new("28")
      C_29 = new("29")
      C_3 = new("3")
      C_30 = new("30")
      C_31 = new("31")
      C_32 = new("32")
      C_33 = new("33")
      C_34 = new("34")
      C_35 = new("35")
      C_36 = new("36")
      C_37 = new("37")
      C_38 = new("38")
      C_39 = new("39")
      C_4 = new("4")
      C_40 = new("40")
      C_41 = new("41")
      C_42 = new("42")
      C_43 = new("43")
      C_44 = new("44")
      C_45 = new("45")
      C_46 = new("46")
      C_47 = new("47")
      C_48 = new("48")
      C_49 = new("49")
      C_5 = new("5")
      C_50 = new("50")
      C_51 = new("51")
      C_52 = new("52")
      C_53 = new("53")
      C_54 = new("54")
      C_55 = new("55")
      C_56 = new("56")
      C_57 = new("57")
      C_58 = new("58")
      C_59 = new("59")
      C_6 = new("6")
      C_60 = new("60")
      C_61 = new("61")
      C_62 = new("62")
      C_63 = new("63")
      C_64 = new("64")
      C_65 = new("65")
      C_66 = new("66")
      C_67 = new("67")
      C_68 = new("68")
      C_69 = new("69")
      C_7 = new("7")
      C_70 = new("70")
      C_71 = new("71")
      C_72 = new("72")
      C_73 = new("73")
      C_74 = new("74")
      C_75 = new("75")
      C_76 = new("76")
      C_77 = new("77")
      C_78 = new("78")
      C_79 = new("79")
      C_8 = new("8")
      C_80 = new("80")
      C_81 = new("81")
      C_82 = new("82")
      C_83 = new("83")
      C_84 = new("84")
      C_85 = new("85")
      C_86 = new("86")
      C_87 = new("87")
      C_88 = new("88")
      C_89 = new("89")
      C_9 = new("9")
      C_90 = new("90")
      C_91 = new("91")
      C_92 = new("92")
      C_93 = new("93")
      C_94 = new("94")
      C_95 = new("95")
      C_96 = new("96")
      C_97 = new("97")
      C_98 = new("98")
      C_99 = new("99")
    end

    # {}allEnergyMetersType
    class AllEnergyMetersType < ::String
      CoalAnthracite = new("Coal Anthracite")
      CoalBituminous = new("Coal Bituminous")
      Coke = new("Coke")
      Diesel = new("Diesel")
      DistrictChilledWaterAbsorptionChillerUsingNaturalGas = new("District Chilled Water - Absorption Chiller using Natural Gas")
      DistrictChilledWaterElectricDrivenChiller = new("District Chilled Water - Electric-Driven Chiller")
      DistrictChilledWaterEngineDrivenChillerUsingNaturalGas = new("District Chilled Water - Engine-Driven Chiller using Natural Gas")
      DistrictChilledWaterOther = new("District Chilled Water - Other")
      DistrictHotWater = new("District Hot Water")
      DistrictSteam = new("District Steam")
      Electric = new("Electric")
      ElectricOnSiteSolar = new("Electric on Site Solar")
      ElectricOnSiteWind = new("Electric on Site Wind")
      FuelOilNo1 = new("Fuel Oil No 1")
      FuelOilNo2 = new("Fuel Oil No 2")
      FuelOilNo4 = new("Fuel Oil No 4")
      FuelOilNo5Or6 = new("Fuel Oil No 5 or 6")
      Kerosene = new("Kerosene")
      NaturalGas = new("Natural Gas")
      OtherEnergy = new("Other (Energy)")
      Propane = new("Propane")
      Wood = new("Wood")
    end

    # {}designUnitOfMeasure
    class DesignUnitOfMeasure < ::String
      CcfHundredCubicFeet = new("ccf (hundred cubic feet)")
      CfCubicFeet = new("cf (cubic feet)")
      CmCubicMeters = new("cm (Cubic meters)")
      Cords = new("Cords")
      GJ = new("GJ")
      GallonsUK = new("Gallons (UK)")
      GallonsUS = new("Gallons (US)")
      KBtuThousandBtu = new("kBtu (thousand Btu)")
      KGalThousandGallonsUK = new("KGal (thousand gallons) (UK)")
      KGalThousandGallonsUS = new("KGal (thousand gallons) (US)")
      KLbsThousandPounds = new("KLbs. (thousand pounds)")
      KWhThousandWattHours = new("kWh (thousand Watt-hours)")
      KcfThousandCubicFeet = new("kcf (thousand cubic feet)")
      KcmThousandCubicMeters = new("Kcm (Thousand Cubic meters)")
      Kilogram = new("Kilogram")
      Liters = new("Liters")
      MBtuMillionBtu = new("MBtu (million Btu)")
      MCFMillionCubicFeet = new("MCF(million cubic feet)")
      MGalMillionGallonsUK = new("MGal (million gallons) (UK)")
      MGalMillionGallonsUS = new("MGal (million gallons) (US)")
      MLbsMillionPounds = new("MLbs. (million pounds)")
      MWhMillionWattHours = new("MWh (million Watt-hours)")
      MgLMilligramsPerLiter = new("mg/l (milligrams per liter)")
      MillionGallonsPerDay = new("Million Gallons per Day")
      Pounds = new("pounds")
      PoundsPerYear = new("Pounds per year")
      Therms = new("therms")
      TonHours = new("ton hours")
      TonnesMetric = new("Tonnes (metric)")
      Tons = new("tons")
    end

    # {}optionalCost
    #  any of emptyString xs:decimal
    class OptionalCost < ::String
    end

    # {}optionalDemand
    #  any of decimalPrecision emptyString
    class OptionalDemand < ::String
    end

    # {}generationPlantType
    #  any of emptyString xs:integer
    class GenerationPlantType < ::String
    end

    # {}allMeterTypes
    #  any of typeOfMeter wasteMeterType
    class AllMeterTypes < ::String
    end

    # {}emptyType
    class EmptyType < ::String
      C_ = new("")
    end

    # {}tenantCommonAreaEnergyType
    class TenantCommonAreaEnergyType < ::String
      CommonAreaCooling = new("Common Area Cooling")
      CommonAreaHeating = new("Common Area Heating")
      CommonAreaHotWater = new("Common Area Hot Water")
      CommonAreaPlugLoadElectricity = new("Common Area Plug Load/Electricity")
      TenantCooling = new("Tenant Cooling")
      TenantHeating = new("Tenant Heating")
      TenantHotWater = new("Tenant Hot Water")
      TenantPlugLoadElectricity = new("Tenant Plug Load/Electricity")
    end

    # {}baselineDateType
    #  any of systemDeterminedString xs:gYearMonth
    class BaselineDateType < ::String
    end

    # {}optionalWasteCost
    #  any of emptyString xs:decimal
    class OptionalWasteCost < ::String
    end

    # {}countryCode
    class CountryCode < ::String
      CA = new("CA")
      C_ = new("")
      US = new("US")
    end

    # {}stateCode
    class StateCode < ::String
      AB = new("AB")
      AK = new("AK")
      AL = new("AL")
      AR = new("AR")
      AS = new("AS")
      AZ = new("AZ")
      BC = new("BC")
      CA = new("CA")
      CO = new("CO")
      CT = new("CT")
      DC = new("DC")
      DE = new("DE")
      FL = new("FL")
      GA = new("GA")
      GU = new("GU")
      HI = new("HI")
      IA = new("IA")
      ID = new("ID")
      IL = new("IL")
      IN = new("IN")
      KS = new("KS")
      KY = new("KY")
      LA = new("LA")
      MA = new("MA")
      MB = new("MB")
      MD = new("MD")
      ME = new("ME")
      MH = new("MH")
      MI = new("MI")
      MN = new("MN")
      MO = new("MO")
      MP = new("MP")
      MS = new("MS")
      MT = new("MT")
      NB = new("NB")
      NC = new("NC")
      ND = new("ND")
      NE = new("NE")
      NH = new("NH")
      NJ = new("NJ")
      NL = new("NL")
      NM = new("NM")
      NN = new("NN")
      NS = new("NS")
      NT = new("NT")
      NU = new("NU")
      NV = new("NV")
      NY = new("NY")
      OH = new("OH")
      OK = new("OK")
      ON = new("ON")
      OR = new("OR")
      PA = new("PA")
      PE = new("PE")
      PI = new("PI")
      PR = new("PR")
      QC = new("QC")
      RI = new("RI")
      SC = new("SC")
      SD = new("SD")
      SK = new("SK")
      TN = new("TN")
      TT = new("TT")
      TX = new("TX")
      UM = new("UM")
      UT = new("UT")
      VA = new("VA")
      VI = new("VI")
      VT = new("VT")
      WA = new("WA")
      WI = new("WI")
      WQ = new("WQ")
      WV = new("WV")
      WY = new("WY")
      YT = new("YT")
    end

    # {}reportingIntervalType
    class ReportingIntervalType < ::String
      MONTHLY = new("MONTHLY")
      QUARTERLY = new("QUARTERLY")
      YEARLY = new("YEARLY")
    end

    # {}reportType
    class ReportType < ::String
      CUSTOM = new("CUSTOM")
      ENERGY_STAR = new("ENERGY_STAR")
    end

    # {}reportStatusType
    class ReportStatusType < ::String
      FAILED = new("FAILED")
      GENERATED = new("GENERATED")
      GENERATED_WITH_ERRORS = new("GENERATED_WITH_ERRORS")
      INITIALIZED = new("INITIALIZED")
      IN_PROCESS = new("IN_PROCESS")
      READY_FOR_DOWNLOAD = new("READY_FOR_DOWNLOAD")
      SENT = new("SENT")
      SUBMITTED = new("SUBMITTED")
    end

    # {}dataRequestStatusType
    class DataRequestStatusType < ::String
      ALL = new("ALL")
      CLOSED = new("CLOSED")
      OPEN = new("OPEN")
    end

    # {}meterCategoryType
    class MeterCategoryType < ::String
      ENERGY = new("ENERGY")
      WASTE = new("WASTE")
      WATER = new("WATER")
    end

    # {}accountInfo
    # @!attribute [rw] firstName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] lastName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] email
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] address
    #   @return [PortfolioManager::Xml::AddressType]
    # @!attribute [rw] jobTitle
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] phone
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] organization
    #   @return [SOAP::SOAPString]
    class AccountInfo
      attr_accessor :firstName
      attr_accessor :lastName
      attr_accessor :email
      attr_accessor :address
      attr_accessor :jobTitle
      attr_accessor :phone
      attr_accessor :organization

      def initialize(firstName = nil, lastName = nil, email = nil, address = nil, jobTitle = nil, phone = nil, organization = nil)
        @firstName = firstName
        @lastName = lastName
        @email = email
        @address = address
        @jobTitle = jobTitle
        @phone = phone
        @organization = organization
      end
    end

    # {}customField
    # @!attribute [rw] minChars
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] maxChars
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] example
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] url
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] displayOrder
    #   @return [SOAP::SOAPInt]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_required
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_validCharacters
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_whenToPrompt
    #   @return [SOAP::SOAPString]
    class CustomField
      AttrName = XSD::QName.new(nil, "name")
      AttrRequired = XSD::QName.new(nil, "required")
      AttrValidCharacters = XSD::QName.new(nil, "validCharacters")
      AttrWhenToPrompt = XSD::QName.new(nil, "whenToPrompt")

      attr_accessor :minChars
      attr_accessor :maxChars
      attr_accessor :description
      attr_accessor :example
      attr_accessor :url
      attr_accessor :displayOrder

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_required
        __xmlattr[AttrRequired]
      end

      def xmlattr_required=(value)
        __xmlattr[AttrRequired] = value
      end

      def xmlattr_validCharacters
        __xmlattr[AttrValidCharacters]
      end

      def xmlattr_validCharacters=(value)
        __xmlattr[AttrValidCharacters] = value
      end

      def xmlattr_whenToPrompt
        __xmlattr[AttrWhenToPrompt]
      end

      def xmlattr_whenToPrompt=(value)
        __xmlattr[AttrWhenToPrompt] = value
      end

      def initialize(minChars = nil, maxChars = nil, description = nil, example = nil, url = nil, displayOrder = nil)
        @minChars = minChars
        @maxChars = maxChars
        @description = description
        @example = example
        @url = url
        @displayOrder = displayOrder
        @__xmlattr = {}
      end
    end

    # {}customFieldList
    class CustomFieldList < ::Array

      # {}customField
      # @!attribute [rw] xmlattr_name
      #   @return [SOAP::SOAPString]
      class CustomField < ::String
        AttrName = XSD::QName.new(nil, "name")

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_name
          __xmlattr[AttrName]
        end

        def xmlattr_name=(value)
          __xmlattr[AttrName] = value
        end

        def initialize(*arg)
          super(*arg)
          @__xmlattr = {}
        end
      end
    end

    # {}federalAgencies
    class FederalAgencies < ::Array
    end

    # {}propertyUse
    # @!attribute [rw] name
    #   @return [Object]
    class PropertyUse
      attr_accessor :name

      def initialize(name = nil)
        @name = name
      end
    end

    # {}customer
    # @!attribute [rw] username
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] includeTestPropertiesInGraphics
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] emailPreferenceCanadianAccount
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] billboardMetric
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] languagePreference
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] accountInfo
    #   @return [PortfolioManager::Xml::AccountInfo]
    class Customer
      attr_accessor :username
      attr_accessor :includeTestPropertiesInGraphics
      attr_accessor :emailPreferenceCanadianAccount
      attr_accessor :billboardMetric
      attr_accessor :languagePreference
      attr_accessor :accountInfo

      def initialize(username = nil, includeTestPropertiesInGraphics = nil, emailPreferenceCanadianAccount = nil, billboardMetric = nil, languagePreference = nil, accountInfo = nil)
        @username = username
        @includeTestPropertiesInGraphics = includeTestPropertiesInGraphics
        @emailPreferenceCanadianAccount = emailPreferenceCanadianAccount
        @billboardMetric = billboardMetric
        @languagePreference = languagePreference
        @accountInfo = accountInfo
      end
    end

    # {}dataExchangeSettings
    # @!attribute [rw] supportedMeterTypes
    #   @return [PortfolioManager::Xml::DataExchangeSettings::SupportedMeterTypes]
    # @!attribute [rw] termsOfUse
    #   @return [PortfolioManager::Xml::DataExchangeSettings::TermsOfUse]
    class DataExchangeSettings

      # inner class for member: supportedMeterTypes
      # {}supportedMeterTypes
      class SupportedMeterTypes < ::Array
      end

      # inner class for member: termsOfUse
      # {}termsOfUse
      # @!attribute [rw] none
      #   @return [PortfolioManager::Xml::EmptyType]
      # @!attribute [rw] text
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] url
      #   @return [SOAP::SOAPAnyURI]
      class TermsOfUse
        attr_accessor :none
        attr_accessor :text
        attr_accessor :url

        def initialize(none = nil, text = nil, url = nil)
          @none = none
          @text = text
          @url = url
        end
      end

      attr_accessor :supportedMeterTypes
      attr_accessor :termsOfUse

      def initialize(supportedMeterTypes = nil, termsOfUse = nil)
        @supportedMeterTypes = supportedMeterTypes
        @termsOfUse = termsOfUse
      end
    end

    # {}useDetails
    # @!attribute [rw] amountOfLaundryProcessedAnnually
    #   @return [PortfolioManager::Xml::AmountOfLaundryProcessedAnnuallyType]
    # @!attribute [rw] averageEffluentBiologicalOxygenDemand
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] averageInfluentBiologicalOxygenDemand
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] averageNumberOfResidents
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] completelyEnclosedFootage
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] cookingFacilities
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] coolingEquipmentRedundancy
    #   @return [PortfolioManager::Xml::CoolingEquipmentRedundancyType]
    # @!attribute [rw] enclosedFloorArea
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] enrollment
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] exteriorEntranceToThePublic
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] fixedFilmTrickleFiltrationProcess
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] fullServiceSpaFloorArea
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] areaOfAllWalkInRefrigerationUnits
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] lengthOfAllOpenClosedRefrigerationUnits
    #   @return [PortfolioManager::Xml::LengthOfAllOpenClosedRefrigerationUnitsType]
    # @!attribute [rw] governmentSubsidizedHousing
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] grantDollars
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] gymCenterFloorArea
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] gymnasiumFloorArea
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] hasComputerLab
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] hasDiningHall
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] hasLaboratory
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] hoursPerDayGuestsOnsite
    #   @return [PortfolioManager::Xml::HoursPerDayGuestsOnsiteType]
    # @!attribute [rw] iceEvents
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] isHighSchool
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] isTertiaryCare
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] itEnergyMeterConfiguration
    #   @return [PortfolioManager::Xml::ItEnergyConfigurationType]
    # @!attribute [rw] laundryFacility
    #   @return [PortfolioManager::Xml::OnsiteLaundryType]
    # @!attribute [rw] maximumNumberOfFloors
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] maximumResidentCapacity
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] licensedBedCapacity
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] monthsInUse
    #   @return [PortfolioManager::Xml::MonthsInUseType]
    # @!attribute [rw] monthsMainIndoorIceRinkInUse
    #   @return [PortfolioManager::Xml::MonthsInUseType]
    # @!attribute [rw] numberOfBedrooms
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfCashRegisters
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfCommercialRefrigerationUnits
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfCommercialWashingMachines
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfComputers
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfConcertShowEventsPerYear
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfResidentialLivingUnitsLowRiseSetting
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfFTEWorkers
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfGuestMealsServedPerYear
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfLaundryHookupsInAllUnits
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfLaundryHookupsInCommonArea
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfMriMachines
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfOpenClosedRefrigerationUnits
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfPeople
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfResidentialLiftSystems
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfResidentialLivingUnits
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfResidentialWashingMachines
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfRooms
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfHotelRooms
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfSpecialOtherEventsPerYear
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfSportingEventsPerYear
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfStaffedBeds
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfSurgicalOperatingBeds
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfWalkInRefrigerationUnits
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfWeekdaysOpen
    #   @return [PortfolioManager::Xml::NumberOfWeekdaysType]
    # @!attribute [rw] numberOfWorkers
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] numberOfIndoorIceRinks
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfWeeklyIceResurfacingForAllRinks
    #   @return [PortfolioManager::Xml::NumberOfWeeklyIceResurfacingType]
    # @!attribute [rw] numberOfCurlingSheets
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] nutrientRemoval
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] onSiteLaundryFacility
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] openFootage
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] openOnWeekends
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] ownedBy
    #   @return [PortfolioManager::Xml::OwnedByType]
    # @!attribute [rw] partiallyEnclosedFootage
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] percentCooled
    #   @return [PortfolioManager::Xml::PercentCooledType]
    # @!attribute [rw] percentHeated
    #   @return [PortfolioManager::Xml::PercentHeatedType]
    # @!attribute [rw] numberOfResidentialLivingUnitsMidRiseSetting
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] percentOfGrossFloorAreaThatIsCommonSpaceOnly
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] percentOfficeCooled
    #   @return [PortfolioManager::Xml::PercentOfficeCooledType]
    # @!attribute [rw] percentOfficeHeated
    #   @return [PortfolioManager::Xml::PercentOfficeHeatedType]
    # @!attribute [rw] totalIceRinkSurfaceAreaForAllRinks
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] plantDesignFlowRate
    #   @return [PortfolioManager::Xml::PlantDesignFlowRateType]
    # @!attribute [rw] poolLocation
    #   @return [PortfolioManager::Xml::PoolType]
    # @!attribute [rw] poolSize
    #   @return [PortfolioManager::Xml::PoolSizeType]
    # @!attribute [rw] numberOfResidentialLivingUnitsHighRiseSetting
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] residentPopulation
    #   @return [PortfolioManager::Xml::ResidentPopulationType]
    # @!attribute [rw] schoolDistrict
    #   @return [PortfolioManager::Xml::UseStringType]
    # @!attribute [rw] seatingCapacity
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] singleStore
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] totalGrossFloorArea
    #   @return [PortfolioManager::Xml::GrossFloorAreaType]
    # @!attribute [rw] estimatesApplied
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] upsSystemRedundancy
    #   @return [PortfolioManager::Xml::UpsSystemRedundancyType]
    # @!attribute [rw] sizeOfElectronicScoreBoards
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] spectatorSeatingCapacity
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] supplementalHeating
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] studentSeatingCapacity
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] surgeryCenterFloorArea
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] weeklyOperatingHours
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] percentUsedForColdStorage
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] grossFloorAreaUsedForFoodPreparation
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] grossFloorAreaHotelConferenceSpace
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] clearHeight
    #   @return [PortfolioManager::Xml::ClearHeightUnitsType]
    # @!attribute [rw] numberOfSterilizationUnits
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] commonEntrance
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] numberOfCookingEquipmentUnits
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] numberOfWarmingHeatingEquipmentUnits
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] ceilingHeight
    #   @return [PortfolioManager::Xml::CeilingHeightUnitsType]
    # @!attribute [rw] averageNumberOfVehiclesInInventory
    #   @return [PortfolioManager::Xml::UseDecimalType]
    # @!attribute [rw] deliveryFacility
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] numberOfLettersPackagesPerYear
    #   @return [PortfolioManager::Xml::UseIntegerType]
    # @!attribute [rw] customUseDetail1
    #   @return [PortfolioManager::Xml::CustomUseDetailsType]
    # @!attribute [rw] customUseDetail2
    #   @return [PortfolioManager::Xml::CustomUseDetailsType]
    # @!attribute [rw] precisionControlsForTemperatureAndHumidity
    #   @return [PortfolioManager::Xml::UseYesNoType]
    # @!attribute [rw] grossFloorAreaThatIsExhibitSpace
    #   @return [PortfolioManager::Xml::OptionalFloorAreaType]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    class UseDetails
      attr_accessor :amountOfLaundryProcessedAnnually
      attr_accessor :averageEffluentBiologicalOxygenDemand
      attr_accessor :averageInfluentBiologicalOxygenDemand
      attr_accessor :averageNumberOfResidents
      attr_accessor :completelyEnclosedFootage
      attr_accessor :cookingFacilities
      attr_accessor :coolingEquipmentRedundancy
      attr_accessor :enclosedFloorArea
      attr_accessor :enrollment
      attr_accessor :exteriorEntranceToThePublic
      attr_accessor :fixedFilmTrickleFiltrationProcess
      attr_accessor :fullServiceSpaFloorArea
      attr_accessor :areaOfAllWalkInRefrigerationUnits
      attr_accessor :lengthOfAllOpenClosedRefrigerationUnits
      attr_accessor :governmentSubsidizedHousing
      attr_accessor :grantDollars
      attr_accessor :gymCenterFloorArea
      attr_accessor :gymnasiumFloorArea
      attr_accessor :hasComputerLab
      attr_accessor :hasDiningHall
      attr_accessor :hasLaboratory
      attr_accessor :hoursPerDayGuestsOnsite
      attr_accessor :iceEvents
      attr_accessor :isHighSchool
      attr_accessor :isTertiaryCare
      attr_accessor :itEnergyMeterConfiguration
      attr_accessor :laundryFacility
      attr_accessor :maximumNumberOfFloors
      attr_accessor :maximumResidentCapacity
      attr_accessor :licensedBedCapacity
      attr_accessor :monthsInUse
      attr_accessor :monthsMainIndoorIceRinkInUse
      attr_accessor :numberOfBedrooms
      attr_accessor :numberOfCashRegisters
      attr_accessor :numberOfCommercialRefrigerationUnits
      attr_accessor :numberOfCommercialWashingMachines
      attr_accessor :numberOfComputers
      attr_accessor :numberOfConcertShowEventsPerYear
      attr_accessor :numberOfResidentialLivingUnitsLowRiseSetting
      attr_accessor :numberOfFTEWorkers
      attr_accessor :numberOfGuestMealsServedPerYear
      attr_accessor :numberOfLaundryHookupsInAllUnits
      attr_accessor :numberOfLaundryHookupsInCommonArea
      attr_accessor :numberOfMriMachines
      attr_accessor :numberOfOpenClosedRefrigerationUnits
      attr_accessor :numberOfPeople
      attr_accessor :numberOfResidentialLiftSystems
      attr_accessor :numberOfResidentialLivingUnits
      attr_accessor :numberOfResidentialWashingMachines
      attr_accessor :numberOfRooms
      attr_accessor :numberOfHotelRooms
      attr_accessor :numberOfSpecialOtherEventsPerYear
      attr_accessor :numberOfSportingEventsPerYear
      attr_accessor :numberOfStaffedBeds
      attr_accessor :numberOfSurgicalOperatingBeds
      attr_accessor :numberOfWalkInRefrigerationUnits
      attr_accessor :numberOfWeekdaysOpen
      attr_accessor :numberOfWorkers
      attr_accessor :numberOfIndoorIceRinks
      attr_accessor :numberOfWeeklyIceResurfacingForAllRinks
      attr_accessor :numberOfCurlingSheets
      attr_accessor :nutrientRemoval
      attr_accessor :onSiteLaundryFacility
      attr_accessor :openFootage
      attr_accessor :openOnWeekends
      attr_accessor :ownedBy
      attr_accessor :partiallyEnclosedFootage
      attr_accessor :percentCooled
      attr_accessor :percentHeated
      attr_accessor :numberOfResidentialLivingUnitsMidRiseSetting
      attr_accessor :percentOfGrossFloorAreaThatIsCommonSpaceOnly
      attr_accessor :percentOfficeCooled
      attr_accessor :percentOfficeHeated
      attr_accessor :totalIceRinkSurfaceAreaForAllRinks
      attr_accessor :plantDesignFlowRate
      attr_accessor :poolLocation
      attr_accessor :poolSize
      attr_accessor :numberOfResidentialLivingUnitsHighRiseSetting
      attr_accessor :residentPopulation
      attr_accessor :schoolDistrict
      attr_accessor :seatingCapacity
      attr_accessor :singleStore
      attr_accessor :totalGrossFloorArea
      attr_accessor :estimatesApplied
      attr_accessor :upsSystemRedundancy
      attr_accessor :sizeOfElectronicScoreBoards
      attr_accessor :spectatorSeatingCapacity
      attr_accessor :supplementalHeating
      attr_accessor :studentSeatingCapacity
      attr_accessor :surgeryCenterFloorArea
      attr_accessor :weeklyOperatingHours
      attr_accessor :percentUsedForColdStorage
      attr_accessor :grossFloorAreaUsedForFoodPreparation
      attr_accessor :grossFloorAreaHotelConferenceSpace
      attr_accessor :clearHeight
      attr_accessor :numberOfSterilizationUnits
      attr_accessor :commonEntrance
      attr_accessor :numberOfCookingEquipmentUnits
      attr_accessor :numberOfWarmingHeatingEquipmentUnits
      attr_accessor :ceilingHeight
      attr_accessor :averageNumberOfVehiclesInInventory
      attr_accessor :deliveryFacility
      attr_accessor :numberOfLettersPackagesPerYear
      attr_accessor :customUseDetail1
      attr_accessor :customUseDetail2
      attr_accessor :precisionControlsForTemperatureAndHumidity
      attr_accessor :grossFloorAreaThatIsExhibitSpace
      attr_accessor :links

      def initialize(amountOfLaundryProcessedAnnually = nil, averageEffluentBiologicalOxygenDemand = nil, averageInfluentBiologicalOxygenDemand = nil, averageNumberOfResidents = nil, completelyEnclosedFootage = nil, cookingFacilities = nil, coolingEquipmentRedundancy = nil, enclosedFloorArea = nil, enrollment = nil, exteriorEntranceToThePublic = nil, fixedFilmTrickleFiltrationProcess = nil, fullServiceSpaFloorArea = nil, areaOfAllWalkInRefrigerationUnits = nil, lengthOfAllOpenClosedRefrigerationUnits = nil, governmentSubsidizedHousing = nil, grantDollars = nil, gymCenterFloorArea = nil, gymnasiumFloorArea = nil, hasComputerLab = nil, hasDiningHall = nil, hasLaboratory = nil, hoursPerDayGuestsOnsite = nil, iceEvents = nil, isHighSchool = nil, isTertiaryCare = nil, itEnergyMeterConfiguration = nil, laundryFacility = nil, maximumNumberOfFloors = nil, maximumResidentCapacity = nil, licensedBedCapacity = nil, monthsInUse = nil, monthsMainIndoorIceRinkInUse = nil, numberOfBedrooms = nil, numberOfCashRegisters = nil, numberOfCommercialRefrigerationUnits = nil, numberOfCommercialWashingMachines = nil, numberOfComputers = nil, numberOfConcertShowEventsPerYear = nil, numberOfResidentialLivingUnitsLowRiseSetting = nil, numberOfFTEWorkers = nil, numberOfGuestMealsServedPerYear = nil, numberOfLaundryHookupsInAllUnits = nil, numberOfLaundryHookupsInCommonArea = nil, numberOfMriMachines = nil, numberOfOpenClosedRefrigerationUnits = nil, numberOfPeople = nil, numberOfResidentialLiftSystems = nil, numberOfResidentialLivingUnits = nil, numberOfResidentialWashingMachines = nil, numberOfRooms = nil, numberOfHotelRooms = nil, numberOfSpecialOtherEventsPerYear = nil, numberOfSportingEventsPerYear = nil, numberOfStaffedBeds = nil, numberOfSurgicalOperatingBeds = nil, numberOfWalkInRefrigerationUnits = nil, numberOfWeekdaysOpen = nil, numberOfWorkers = nil, numberOfIndoorIceRinks = nil, numberOfWeeklyIceResurfacingForAllRinks = nil, numberOfCurlingSheets = nil, nutrientRemoval = nil, onSiteLaundryFacility = nil, openFootage = nil, openOnWeekends = nil, ownedBy = nil, partiallyEnclosedFootage = nil, percentCooled = nil, percentHeated = nil, numberOfResidentialLivingUnitsMidRiseSetting = nil, percentOfGrossFloorAreaThatIsCommonSpaceOnly = nil, percentOfficeCooled = nil, percentOfficeHeated = nil, totalIceRinkSurfaceAreaForAllRinks = nil, plantDesignFlowRate = nil, poolLocation = nil, poolSize = nil, numberOfResidentialLivingUnitsHighRiseSetting = nil, residentPopulation = nil, schoolDistrict = nil, seatingCapacity = nil, singleStore = nil, totalGrossFloorArea = nil, estimatesApplied = nil, upsSystemRedundancy = nil, sizeOfElectronicScoreBoards = nil, spectatorSeatingCapacity = nil, supplementalHeating = nil, studentSeatingCapacity = nil, surgeryCenterFloorArea = nil, weeklyOperatingHours = nil, percentUsedForColdStorage = nil, grossFloorAreaUsedForFoodPreparation = nil, grossFloorAreaHotelConferenceSpace = nil, clearHeight = nil, numberOfSterilizationUnits = nil, commonEntrance = nil, numberOfCookingEquipmentUnits = nil, numberOfWarmingHeatingEquipmentUnits = nil, ceilingHeight = nil, averageNumberOfVehiclesInInventory = nil, deliveryFacility = nil, numberOfLettersPackagesPerYear = nil, customUseDetail1 = nil, customUseDetail2 = nil, precisionControlsForTemperatureAndHumidity = nil, grossFloorAreaThatIsExhibitSpace = nil, links = nil)
        @amountOfLaundryProcessedAnnually = amountOfLaundryProcessedAnnually
        @averageEffluentBiologicalOxygenDemand = averageEffluentBiologicalOxygenDemand
        @averageInfluentBiologicalOxygenDemand = averageInfluentBiologicalOxygenDemand
        @averageNumberOfResidents = averageNumberOfResidents
        @completelyEnclosedFootage = completelyEnclosedFootage
        @cookingFacilities = cookingFacilities
        @coolingEquipmentRedundancy = coolingEquipmentRedundancy
        @enclosedFloorArea = enclosedFloorArea
        @enrollment = enrollment
        @exteriorEntranceToThePublic = exteriorEntranceToThePublic
        @fixedFilmTrickleFiltrationProcess = fixedFilmTrickleFiltrationProcess
        @fullServiceSpaFloorArea = fullServiceSpaFloorArea
        @areaOfAllWalkInRefrigerationUnits = areaOfAllWalkInRefrigerationUnits
        @lengthOfAllOpenClosedRefrigerationUnits = lengthOfAllOpenClosedRefrigerationUnits
        @governmentSubsidizedHousing = governmentSubsidizedHousing
        @grantDollars = grantDollars
        @gymCenterFloorArea = gymCenterFloorArea
        @gymnasiumFloorArea = gymnasiumFloorArea
        @hasComputerLab = hasComputerLab
        @hasDiningHall = hasDiningHall
        @hasLaboratory = hasLaboratory
        @hoursPerDayGuestsOnsite = hoursPerDayGuestsOnsite
        @iceEvents = iceEvents
        @isHighSchool = isHighSchool
        @isTertiaryCare = isTertiaryCare
        @itEnergyMeterConfiguration = itEnergyMeterConfiguration
        @laundryFacility = laundryFacility
        @maximumNumberOfFloors = maximumNumberOfFloors
        @maximumResidentCapacity = maximumResidentCapacity
        @licensedBedCapacity = licensedBedCapacity
        @monthsInUse = monthsInUse
        @monthsMainIndoorIceRinkInUse = monthsMainIndoorIceRinkInUse
        @numberOfBedrooms = numberOfBedrooms
        @numberOfCashRegisters = numberOfCashRegisters
        @numberOfCommercialRefrigerationUnits = numberOfCommercialRefrigerationUnits
        @numberOfCommercialWashingMachines = numberOfCommercialWashingMachines
        @numberOfComputers = numberOfComputers
        @numberOfConcertShowEventsPerYear = numberOfConcertShowEventsPerYear
        @numberOfResidentialLivingUnitsLowRiseSetting = numberOfResidentialLivingUnitsLowRiseSetting
        @numberOfFTEWorkers = numberOfFTEWorkers
        @numberOfGuestMealsServedPerYear = numberOfGuestMealsServedPerYear
        @numberOfLaundryHookupsInAllUnits = numberOfLaundryHookupsInAllUnits
        @numberOfLaundryHookupsInCommonArea = numberOfLaundryHookupsInCommonArea
        @numberOfMriMachines = numberOfMriMachines
        @numberOfOpenClosedRefrigerationUnits = numberOfOpenClosedRefrigerationUnits
        @numberOfPeople = numberOfPeople
        @numberOfResidentialLiftSystems = numberOfResidentialLiftSystems
        @numberOfResidentialLivingUnits = numberOfResidentialLivingUnits
        @numberOfResidentialWashingMachines = numberOfResidentialWashingMachines
        @numberOfRooms = numberOfRooms
        @numberOfHotelRooms = numberOfHotelRooms
        @numberOfSpecialOtherEventsPerYear = numberOfSpecialOtherEventsPerYear
        @numberOfSportingEventsPerYear = numberOfSportingEventsPerYear
        @numberOfStaffedBeds = numberOfStaffedBeds
        @numberOfSurgicalOperatingBeds = numberOfSurgicalOperatingBeds
        @numberOfWalkInRefrigerationUnits = numberOfWalkInRefrigerationUnits
        @numberOfWeekdaysOpen = numberOfWeekdaysOpen
        @numberOfWorkers = numberOfWorkers
        @numberOfIndoorIceRinks = numberOfIndoorIceRinks
        @numberOfWeeklyIceResurfacingForAllRinks = numberOfWeeklyIceResurfacingForAllRinks
        @numberOfCurlingSheets = numberOfCurlingSheets
        @nutrientRemoval = nutrientRemoval
        @onSiteLaundryFacility = onSiteLaundryFacility
        @openFootage = openFootage
        @openOnWeekends = openOnWeekends
        @ownedBy = ownedBy
        @partiallyEnclosedFootage = partiallyEnclosedFootage
        @percentCooled = percentCooled
        @percentHeated = percentHeated
        @numberOfResidentialLivingUnitsMidRiseSetting = numberOfResidentialLivingUnitsMidRiseSetting
        @percentOfGrossFloorAreaThatIsCommonSpaceOnly = percentOfGrossFloorAreaThatIsCommonSpaceOnly
        @percentOfficeCooled = percentOfficeCooled
        @percentOfficeHeated = percentOfficeHeated
        @totalIceRinkSurfaceAreaForAllRinks = totalIceRinkSurfaceAreaForAllRinks
        @plantDesignFlowRate = plantDesignFlowRate
        @poolLocation = poolLocation
        @poolSize = poolSize
        @numberOfResidentialLivingUnitsHighRiseSetting = numberOfResidentialLivingUnitsHighRiseSetting
        @residentPopulation = residentPopulation
        @schoolDistrict = schoolDistrict
        @seatingCapacity = seatingCapacity
        @singleStore = singleStore
        @totalGrossFloorArea = totalGrossFloorArea
        @estimatesApplied = estimatesApplied
        @upsSystemRedundancy = upsSystemRedundancy
        @sizeOfElectronicScoreBoards = sizeOfElectronicScoreBoards
        @spectatorSeatingCapacity = spectatorSeatingCapacity
        @supplementalHeating = supplementalHeating
        @studentSeatingCapacity = studentSeatingCapacity
        @surgeryCenterFloorArea = surgeryCenterFloorArea
        @weeklyOperatingHours = weeklyOperatingHours
        @percentUsedForColdStorage = percentUsedForColdStorage
        @grossFloorAreaUsedForFoodPreparation = grossFloorAreaUsedForFoodPreparation
        @grossFloorAreaHotelConferenceSpace = grossFloorAreaHotelConferenceSpace
        @clearHeight = clearHeight
        @numberOfSterilizationUnits = numberOfSterilizationUnits
        @commonEntrance = commonEntrance
        @numberOfCookingEquipmentUnits = numberOfCookingEquipmentUnits
        @numberOfWarmingHeatingEquipmentUnits = numberOfWarmingHeatingEquipmentUnits
        @ceilingHeight = ceilingHeight
        @averageNumberOfVehiclesInInventory = averageNumberOfVehiclesInInventory
        @deliveryFacility = deliveryFacility
        @numberOfLettersPackagesPerYear = numberOfLettersPackagesPerYear
        @customUseDetail1 = customUseDetail1
        @customUseDetail2 = customUseDetail2
        @precisionControlsForTemperatureAndHumidity = precisionControlsForTemperatureAndHumidity
        @grossFloorAreaThatIsExhibitSpace = grossFloorAreaThatIsExhibitSpace
        @links = links
      end
    end

    # {}propertyRepresentation
    # @!attribute [rw] propertyRepresentationType
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] tenantCommonAreaEnergyUseList
    #   @return [PortfolioManager::Xml::TenantCommonAreaEnergyUseInformationType]
    # @!attribute [rw] propertyRepresentationTypeOtherDesc
    #   @return [SOAP::SOAPString]
    class PropertyRepresentation
      attr_accessor :propertyRepresentationType
      attr_accessor :tenantCommonAreaEnergyUseList
      attr_accessor :propertyRepresentationTypeOtherDesc

      def initialize(propertyRepresentationType = nil, tenantCommonAreaEnergyUseList = nil, propertyRepresentationTypeOtherDesc = nil)
        @propertyRepresentationType = propertyRepresentationType
        @tenantCommonAreaEnergyUseList = tenantCommonAreaEnergyUseList
        @propertyRepresentationTypeOtherDesc = propertyRepresentationTypeOtherDesc
      end
    end

    # {}additionalIdentifiers
    class AdditionalIdentifiers < ::Array
    end

    # {}additionalIdentifier
    # @!attribute [rw] additionalIdentifierType
    #   @return [PortfolioManager::Xml::AdditionalIdentifierType]
    # @!attribute [rw] description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] value
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    class AdditionalIdentifier
      AttrId = XSD::QName.new(nil, "id")

      attr_accessor :additionalIdentifierType
      attr_accessor :description
      attr_accessor :value

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def initialize(additionalIdentifierType = nil, description = nil, value = nil)
        @additionalIdentifierType = additionalIdentifierType
        @description = description
        @value = value
        @__xmlattr = {}
      end
    end

    # {}additionalIdentifierTypes
    class AdditionalIdentifierTypes < ::Array
    end

    # {}additionalIdentifierType
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_standardApproved
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_group
    #   @return [SOAP::SOAPString]
    class AdditionalIdentifierType
      AttrDescription = XSD::QName.new(nil, "description")
      AttrGroup = XSD::QName.new(nil, "group")
      AttrId = XSD::QName.new(nil, "id")
      AttrName = XSD::QName.new(nil, "name")
      AttrStandardApproved = XSD::QName.new(nil, "standardApproved")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_standardApproved
        __xmlattr[AttrStandardApproved]
      end

      def xmlattr_standardApproved=(value)
        __xmlattr[AttrStandardApproved] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_description
        __xmlattr[AttrDescription]
      end

      def xmlattr_description=(value)
        __xmlattr[AttrDescription] = value
      end

      def xmlattr_group
        __xmlattr[AttrGroup]
      end

      def xmlattr_group=(value)
        __xmlattr[AttrGroup] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}eduList
    class EduList < ::Array
    end

    # {}edu
    # @!attribute [rw] xmlattr_eduCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_preferred
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_selected
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_eGridCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_eGridName
    #   @return [SOAP::SOAPString]
    class Edu
      AttrEGridCode = XSD::QName.new(nil, "eGridCode")
      AttrEGridName = XSD::QName.new(nil, "eGridName")
      AttrEduCode = XSD::QName.new(nil, "eduCode")
      AttrName = XSD::QName.new(nil, "name")
      AttrPreferred = XSD::QName.new(nil, "preferred")
      AttrSelected = XSD::QName.new(nil, "selected")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_eduCode
        __xmlattr[AttrEduCode]
      end

      def xmlattr_eduCode=(value)
        __xmlattr[AttrEduCode] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_preferred
        __xmlattr[AttrPreferred]
      end

      def xmlattr_preferred=(value)
        __xmlattr[AttrPreferred] = value
      end

      def xmlattr_selected
        __xmlattr[AttrSelected]
      end

      def xmlattr_selected=(value)
        __xmlattr[AttrSelected] = value
      end

      def xmlattr_eGridCode
        __xmlattr[AttrEGridCode]
      end

      def xmlattr_eGridCode=(value)
        __xmlattr[AttrEGridCode] = value
      end

      def xmlattr_eGridName
        __xmlattr[AttrEGridName]
      end

      def xmlattr_eGridName=(value)
        __xmlattr[AttrEGridName] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}pgpList
    class PgpList < ::Array
    end

    # {}pgp
    # @!attribute [rw] xmlattr_plantCode
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_selected
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] xmlattr_eGridCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_eGridName
    #   @return [SOAP::SOAPString]
    class Pgp
      AttrEGridCode = XSD::QName.new(nil, "eGridCode")
      AttrEGridName = XSD::QName.new(nil, "eGridName")
      AttrName = XSD::QName.new(nil, "name")
      AttrPlantCode = XSD::QName.new(nil, "plantCode")
      AttrSelected = XSD::QName.new(nil, "selected")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_plantCode
        __xmlattr[AttrPlantCode]
      end

      def xmlattr_plantCode=(value)
        __xmlattr[AttrPlantCode] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_selected
        __xmlattr[AttrSelected]
      end

      def xmlattr_selected=(value)
        __xmlattr[AttrSelected] = value
      end

      def xmlattr_eGridCode
        __xmlattr[AttrEGridCode]
      end

      def xmlattr_eGridCode=(value)
        __xmlattr[AttrEGridCode] = value
      end

      def xmlattr_eGridName
        __xmlattr[AttrEGridName]
      end

      def xmlattr_eGridName=(value)
        __xmlattr[AttrEGridName] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}eGridSubregionList
    class EGridSubregionList < ::Array
    end

    # {}eGridSubregion
    # @!attribute [rw] xmlattr_code
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_country
    #   @return [SOAP::SOAPString]
    class EGridSubregion
      AttrCode = XSD::QName.new(nil, "code")
      AttrCountry = XSD::QName.new(nil, "country")
      AttrName = XSD::QName.new(nil, "name")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_code
        __xmlattr[AttrCode]
      end

      def xmlattr_code=(value)
        __xmlattr[AttrCode] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def xmlattr_country
        __xmlattr[AttrCountry]
      end

      def xmlattr_country=(value)
        __xmlattr[AttrCountry] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}internationalWeatherStationList
    # @!attribute [rw] station
    #   @return [PortfolioManager::Xml::Station]
    # @!attribute [rw] links
    #   @return [PortfolioManager::Xml::LinksType]
    class InternationalWeatherStationList
      attr_accessor :station
      attr_accessor :links

      def initialize(station = [], links = nil)
        @station = station
        @links = links
      end
    end

    # {}station
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_country
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_countryName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] xmlattr_stationName
    #   @return [SOAP::SOAPString]
    class Station
      AttrCountry = XSD::QName.new(nil, "country")
      AttrCountryName = XSD::QName.new(nil, "countryName")
      AttrId = XSD::QName.new(nil, "id")
      AttrStationName = XSD::QName.new(nil, "stationName")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_country
        __xmlattr[AttrCountry]
      end

      def xmlattr_country=(value)
        __xmlattr[AttrCountry] = value
      end

      def xmlattr_countryName
        __xmlattr[AttrCountryName]
      end

      def xmlattr_countryName=(value)
        __xmlattr[AttrCountryName] = value
      end

      def xmlattr_stationName
        __xmlattr[AttrStationName]
      end

      def xmlattr_stationName=(value)
        __xmlattr[AttrStationName] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}billboardMetricSetting
    # @!attribute [rw] billboardMetric
    #   @return [SOAP::SOAPString]
    class BillboardMetricSetting
      attr_accessor :billboardMetric

      def initialize(billboardMetric = nil)
        @billboardMetric = billboardMetric
      end
    end

    # {}verification
    # @!attribute [rw] periodEndingDate
    #   @return [SOAP::SOAPGYearMonth]
    # @!attribute [rw] verificationDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] title
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] organization
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] phone
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] email
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] postalCode
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] professionalDesignationList
    #   @return [PortfolioManager::Xml::ProfessionalDesignationList]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class Verification
      attr_accessor :periodEndingDate
      attr_accessor :verificationDate
      attr_accessor :name
      attr_accessor :title
      attr_accessor :organization
      attr_accessor :phone
      attr_accessor :email
      attr_accessor :postalCode
      attr_accessor :professionalDesignationList
      attr_accessor :audit

      def initialize(periodEndingDate = nil, verificationDate = nil, name = nil, title = nil, organization = nil, phone = nil, email = nil, postalCode = nil, professionalDesignationList = nil, audit = nil)
        @periodEndingDate = periodEndingDate
        @verificationDate = verificationDate
        @name = name
        @title = title
        @organization = organization
        @phone = phone
        @email = email
        @postalCode = postalCode
        @professionalDesignationList = professionalDesignationList
        @audit = audit
      end
    end

    # {}professionalDesignationList
    class ProfessionalDesignationList < ::Array

      # {}professionalDesignation
      # @!attribute [rw] licenseList
      #   @return [PortfolioManager::Xml::LicenseList]
      # @!attribute [rw] xmlattr_id
      #   @return [SOAP::SOAPString]
      # @!attribute [rw] xmlattr_name
      #   @return [SOAP::SOAPString]
      class ProfessionalDesignation
        AttrId = XSD::QName.new(nil, "id")
        AttrName = XSD::QName.new(nil, "name")

        attr_accessor :licenseList

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_id
          __xmlattr[AttrId]
        end

        def xmlattr_id=(value)
          __xmlattr[AttrId] = value
        end

        def xmlattr_name
          __xmlattr[AttrName]
        end

        def xmlattr_name=(value)
          __xmlattr[AttrName] = value
        end

        def initialize(licenseList = nil)
          @licenseList = licenseList
          @__xmlattr = {}
        end
      end
    end

    # {}licenseList
    class LicenseList < ::Array
    end

    # {}license
    # @!attribute [rw] index
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] countryCode
    #   @return [PortfolioManager::Xml::CountryCode]
    # @!attribute [rw] licenseNumber
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] licenseState
    #   @return [PortfolioManager::Xml::StateCode]
    # @!attribute [rw] licenseName
    #   @return [SOAP::SOAPString]
    class License
      attr_accessor :index
      attr_accessor :countryCode
      attr_accessor :licenseNumber
      attr_accessor :licenseState
      attr_accessor :licenseName

      def initialize(index = nil, countryCode = nil, licenseNumber = nil, licenseState = nil, licenseName = nil)
        @index = index
        @countryCode = countryCode
        @licenseNumber = licenseNumber
        @licenseState = licenseState
        @licenseName = licenseName
      end
    end

    # {}customMetric
    # @!attribute [rw] name
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] numeratorMetricId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] denominatorDetailTypeId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_unitOfMeasure
    #   @return [SOAP::SOAPString]
    class CustomMetric
      AttrId = XSD::QName.new(nil, "id")
      AttrUnitOfMeasure = XSD::QName.new(nil, "unitOfMeasure")

      attr_accessor :name
      attr_accessor :numeratorMetricId
      attr_accessor :denominatorDetailTypeId

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_unitOfMeasure
        __xmlattr[AttrUnitOfMeasure]
      end

      def xmlattr_unitOfMeasure=(value)
        __xmlattr[AttrUnitOfMeasure] = value
      end

      def initialize(name = nil, numeratorMetricId = nil, denominatorDetailTypeId = nil)
        @name = name
        @numeratorMetricId = numeratorMetricId
        @denominatorDetailTypeId = denominatorDetailTypeId
        @__xmlattr = {}
      end
    end

    # {}detailsTypes
    class DetailsTypes < ::Array
    end

    # {}detailType
    # @!attribute [rw] xmlattr_id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] xmlattr_name
    #   @return [SOAP::SOAPString]
    class DetailType
      AttrId = XSD::QName.new(nil, "id")
      AttrName = XSD::QName.new(nil, "name")

      def __xmlattr
        @__xmlattr ||= {}
      end

      def xmlattr_id
        __xmlattr[AttrId]
      end

      def xmlattr_id=(value)
        __xmlattr[AttrId] = value
      end

      def xmlattr_name
        __xmlattr[AttrName]
      end

      def xmlattr_name=(value)
        __xmlattr[AttrName] = value
      end

      def initialize
        @__xmlattr = {}
      end
    end

    # {}individualMeter
    # @!attribute [rw] id
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] meterId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] customId
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] customIdName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] serviceAddress
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] inUse
    #   @return [SOAP::SOAPBoolean]
    # @!attribute [rw] inactiveDate
    #   @return [SOAP::SOAPDate]
    # @!attribute [rw] audit
    #   @return [PortfolioManager::Xml::LogType]
    class IndividualMeter
      attr_accessor :id
      attr_accessor :meterId
      attr_accessor :customId
      attr_accessor :customIdName
      attr_accessor :serviceAddress
      attr_accessor :inUse
      attr_accessor :inactiveDate
      attr_accessor :audit

      def initialize(id = nil, meterId = nil, customId = nil, customIdName = nil, serviceAddress = nil, inUse = nil, inactiveDate = nil, audit = nil)
        @id = id
        @meterId = meterId
        @customId = customId
        @customIdName = customIdName
        @serviceAddress = serviceAddress
        @inUse = inUse
        @inactiveDate = inactiveDate
        @audit = audit
      end
    end

    # {}templateType
    class TemplateType < ::String
      CUSTOM = new("CUSTOM")
      ENERGY_STAR = new("ENERGY_STAR")
    end

    # {}responseStatus
    # @!attribute [rw] status
    #   @return [PortfolioManager::Xml::ReportStatusType]
    # @!attribute [rw] description
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] generationStartDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] generationEndDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] submittedDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] sentDate
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] errors
    #   @return [PortfolioManager::Xml::ResponseStatus::Errors]
    class ResponseStatus < ReportStatusDef

      # inner class for member: errors
      # {}errors
      # @!attribute [rw] links
      #   @return [PortfolioManager::Xml::LinksType]
      class Errors
        attr_accessor :links

        def initialize(links = nil)
          @links = links
        end
      end

      attr_accessor :status
      attr_accessor :description
      attr_accessor :generationStartDate
      attr_accessor :generationEndDate
      attr_accessor :submittedDate
      attr_accessor :sentDate
      attr_accessor :errors

      def initialize(status = nil, description = nil, generationStartDate = nil, generationEndDate = nil, submittedDate = nil, sentDate = nil, errors = nil)
        @status = status
        @description = description
        @generationStartDate = generationStartDate
        @generationEndDate = generationEndDate
        @submittedDate = submittedDate
        @sentDate = sentDate
        @errors = errors
      end
    end

    # {}reportError
    # @!attribute [rw] reportId
    #   @return [SOAP::SOAPLong]
    # @!attribute [rw] templateName
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] dateGenerated
    #   @return [SOAP::SOAPDateTime]
    # @!attribute [rw] numberOfProperties
    #   @return [SOAP::SOAPInteger]
    # @!attribute [rw] missingMetrics
    #   @return [PortfolioManager::Xml::ReportError::MissingMetrics]
    class ReportError

      # inner class for member: missingMetrics
      # {}missingMetrics
      class MissingMetrics < ::Array

        # {}propertyMissingMetric
        # @!attribute [rw] yearEndingDate
        #   @return [SOAP::SOAPDate]
        # @!attribute [rw] metric
        #   @return [PortfolioManager::Xml::ReportError::MissingMetrics::PropertyMissingMetric::Metric]
        # @!attribute [rw] xmlattr_propertyId
        #   @return [SOAP::SOAPLong]
        # @!attribute [rw] xmlattr_propertyName
        #   @return [SOAP::SOAPString]
        class PropertyMissingMetric
          AttrPropertyId = XSD::QName.new(nil, "propertyId")
          AttrPropertyName = XSD::QName.new(nil, "propertyName")

          # inner class for member: metric
          # {}metric
          # @!attribute [rw] error
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_name
          #   @return [SOAP::SOAPString]
          # @!attribute [rw] xmlattr_id
          #   @return [SOAP::SOAPLong]
          class Metric
            AttrId = XSD::QName.new(nil, "id")
            AttrName = XSD::QName.new(nil, "name")

            attr_accessor :error

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_name
              __xmlattr[AttrName]
            end

            def xmlattr_name=(value)
              __xmlattr[AttrName] = value
            end

            def xmlattr_id
              __xmlattr[AttrId]
            end

            def xmlattr_id=(value)
              __xmlattr[AttrId] = value
            end

            def initialize(error = nil)
              @error = error
              @__xmlattr = {}
            end
          end

          attr_accessor :yearEndingDate
          attr_accessor :metric

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_propertyId
            __xmlattr[AttrPropertyId]
          end

          def xmlattr_propertyId=(value)
            __xmlattr[AttrPropertyId] = value
          end

          def xmlattr_propertyName
            __xmlattr[AttrPropertyName]
          end

          def xmlattr_propertyName=(value)
            __xmlattr[AttrPropertyName] = value
          end

          def initialize(yearEndingDate = nil, metric = [])
            @yearEndingDate = yearEndingDate
            @metric = metric
            @__xmlattr = {}
          end
        end
      end

      attr_accessor :reportId
      attr_accessor :templateName
      attr_accessor :dateGenerated
      attr_accessor :numberOfProperties
      attr_accessor :missingMetrics

      def initialize(reportId = nil, templateName = nil, dateGenerated = nil, numberOfProperties = nil, missingMetrics = nil)
        @reportId = reportId
        @templateName = templateName
        @dateGenerated = dateGenerated
        @numberOfProperties = numberOfProperties
        @missingMetrics = missingMetrics
      end
    end

    # {}sendDataResponse
    # @!attribute [rw] additionalEmailAddresses
    #   @return [PortfolioManager::Xml::SendDataResponse::AdditionalEmailAddresses]
    # @!attribute [rw] fileFormat
    #   @return [SOAP::SOAPString]
    # @!attribute [rw] submitWithErrors
    #   @return [SOAP::SOAPBoolean]
    class SendDataResponse

      # inner class for member: additionalEmailAddresses
      # {}additionalEmailAddresses
      class AdditionalEmailAddresses < ::Array
      end

      attr_accessor :additionalEmailAddresses
      attr_accessor :fileFormat
      attr_accessor :submitWithErrors

      def initialize(additionalEmailAddresses = nil, fileFormat = nil, submitWithErrors = nil)
        @additionalEmailAddresses = additionalEmailAddresses
        @fileFormat = fileFormat
        @submitWithErrors = submitWithErrors
      end
    end
  end
end
