module PortfolioManager
  module Services
    # All Services
    module All
      # Live Environment
      module Live
        include PortfolioManager::Services::BasicAccount::All::Live
        include PortfolioManager::Services::Building::All::Live
        include PortfolioManager::Services::Connection::All::Live
        include PortfolioManager::Services::HomeEnergyYardstick::All::Live
        include PortfolioManager::Services::Meter::All::Live
        include PortfolioManager::Services::Property::All::Live
        include PortfolioManager::Services::PropertyUse::All::Live
        include PortfolioManager::Services::Reporting::All::Live
        include PortfolioManager::Services::TargetFinder::All::Live
      end

      # Test Environment
      module Test
        include PortfolioManager::Services::BasicAccount::All::Test
        include PortfolioManager::Services::Building::All::Test
        include PortfolioManager::Services::Connection::All::Test
        include PortfolioManager::Services::HomeEnergyYardstick::All::Test
        include PortfolioManager::Services::Meter::All::Test
        include PortfolioManager::Services::Property::All::Test
        include PortfolioManager::Services::PropertyUse::All::Test
        include PortfolioManager::Services::Reporting::All::Test
        include PortfolioManager::Services::TargetFinder::All::Test
      end
    end
  end
end
