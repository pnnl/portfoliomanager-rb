require "portfolio_manager/version"

# ENERGY STAR Portfolio Manager
#
# @see https://portfoliomanager.energystar.gov/webservices/home ENERGY STAR Portfolio Manager Documentation
module PortfolioManager
  # ENERGY STAR Portfolio Manager Error
  class Error < StandardError; end

  autoload :Client,          "portfolio_manager/client"
  autoload :Mapper,          "portfolio_manager/mapper"
  autoload :MappingRegistry, "portfolio_manager/mapping_registry"
  autoload :Services,        "portfolio_manager/services"
  autoload :Xml,             "portfolio_manager/xml"
end
