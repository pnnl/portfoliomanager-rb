require "singleton"
require "xsd/mapping"

module PortfolioManager
  # Mapper
  class Mapper < XSD::Mapping::Mapper
    include Singleton

    # Singleton constructor.
    def initialize
      super(PortfolioManager::MappingRegistry::Registry)
    end
  end
end
