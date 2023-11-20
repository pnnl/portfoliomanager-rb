module PortfolioManager
  # Web Services
  #
  # For your convenience, EPA has organized web services into the following
  # major categories. Click on each category to view the list of web services
  # and their corresponding XML schemas. If you want to download all the
  # schemas, please click {https://portfoliomanager.energystar.gov/schema/18.0/portfoliomanager-schemas-18.0.zip here}.
  #
  # @see https://portfoliomanager.energystar.gov/webservices/home/api
  module Services
    autoload :All,                 "portfolio_manager/services/all"
    autoload :BasicAccount,        "portfolio_manager/services/basic_account"
    autoload :Building,            "portfolio_manager/services/building"
    autoload :Connection,          "portfolio_manager/services/connection"
    autoload :HomeEnergyYardstick, "portfolio_manager/services/home_energy_yardstick"
    autoload :Meter,               "portfolio_manager/services/meter"
    autoload :Property,            "portfolio_manager/services/property"
    autoload :PropertyUse,         "portfolio_manager/services/property_use"
    autoload :Reporting,           "portfolio_manager/services/reporting"
    autoload :TargetFinder,        "portfolio_manager/services/target_finder"
  end
end
