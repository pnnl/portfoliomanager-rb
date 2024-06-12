# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.1] - 2022-02-23

### Added
- Initial commit.

## [0.0.2] - 2023-11-17

### Changed
- Update from v18 to v21.

## [0.0.3] - 2024-05-13

### Changed
- Update from v21 to v22.

## [0.0.4] - 2024-05-14

### Changed
- Fix return value classes for `PortfolioManager::Services::Connection::ConnectionShare::Live#accept_reject_pending_connection_requests`, `PortfolioManager::Services::Connection::ConnectionShare::Live#accept_reject_pending_meter_share_requests`, and `PortfolioManager::Services::Connection::ConnectionShare::Live#accept_reject_pending_property_share_requests` methods.

## [0.0.5] - 2024-05-15

### Changed
- Force encoding of HTTP response body to be UTF-8.

## [0.0.6] - 2024-05-16

### Added
- Add support for proxy servers.

## [0.0.7] - 2024-05-31

### Added
- Add "Custom Metrics" web services to "Property Services" (added in v22).

### Changed
- Fix error handling in `PortfolioManager::Client::Base#request`.
- Fix return value classes for `PortfolioManager::Xml::ResponseType`.

## [0.0.8] - 2024-06-12

### Changed
- Fix value handling in `PortfolioManager::Xml::CustomFieldList::CustomField`.

[Unreleased]: https://github.com/pnnl/portfoliomanager-rb/compare/v0.0.1...HEAD
[0.0.1]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.1
[0.0.2]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.2
[0.0.3]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.3
[0.0.4]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.4
[0.0.5]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.5
[0.0.6]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.6
[0.0.7]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.7
[0.0.8]: https://github.com/pnnl/portfoliomanager-rb/releases/tag/v0.0.7
