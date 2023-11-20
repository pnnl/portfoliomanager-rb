require "net/http"

module PortfolioManager
  module Services
    # Reporting Services
    #
    # The Reporting Services allows you to retrieve metrics for your properties.
    #
    # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting
    module Reporting
      # Custom Reporting (Template Management)
      module CustomReportingTemplateManagement
        # Live Environment
        module Live
          # Get Available Metrics List
          #
          # This web service returns a list of all available metrics that can be
          # used in a report template.
          #
          # @param group_ids [nil, Array<Integer>]
          # @return [PortfolioManager::Xml::ReportMetrics]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/availableMetricsList/get
          def get_available_metrics_list(group_ids = nil)
            request(Net::HTTP::Get, path_for("reports", "metrics"), {
              "groupIds" => (group_ids.nil? || group_ids.empty?) ? nil : group_ids.collect(&:to_s).join(","),
            }, {}, nil, nil, PortfolioManager::Xml::ReportMetrics, basic_auth: true)
          end

          # Add Report Template
          #
          # This web service creates a report template in your account based on
          # the template name and set of metrics provided in the XML request.
          # This web service returns the unique identifier to the report
          # template and a link to the corresponding web service to retrieve it.
          # In addition, a unique identifier to the corresponding report and
          # link to the web service to retrieve it are also returned.
          #
          # The following are limitations you should be aware of:
          # * The maximum number of metrics that you are allowed to specify is
          #   the same limit that you have in the user interface.
          #
          # The list of metrics are specified by their unique identifiers and
          # will be configured in the report template based on the order
          # provided in the XML request with the exception of the 4 metrics
          # listed below. The 4 metrics listed below are always included as the
          # first 4 metrics in the report template even if they are not
          # explicitly specified.
          #
          # * Property Id (id 448)
          # * Property Name (id 443)
          # * Parent Property Id (id 449)
          # * Parent Property Name (id 1301)
          #
          # @param report_template [PortfolioManager::Xml::ReportTemplateType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/template/post
          def add_report_template(report_template)
            request(Net::HTTP::Post, path_for("reports", "templates"), {}, {}, report_template, "reportTemplate", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Report Template
          #
          # This web service retrieves information for a specific report
          # template which includes the template name, the set of metrics, and
          # the unique identifier to the corresponding report.  The metrics are
          # listed in the order that they display in the report. The report
          # template must be owned by you.
          #
          # @param template_id [Integer]
          # @return [PortfolioManager::Xml::ReportTemplateType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/template/get
          def get_report_template(template_id)
            request(Net::HTTP::Get, path_for("reports", "templates", template_id), {}, {}, nil, nil, PortfolioManager::Xml::ReportTemplateType, basic_auth: true)
          end

          # Edit Report Template
          #
          # This web service updates a specified report template based on the
          # template name and set of metrics provided in the XML request. This
          # web service returns the unique identifier to the report template and
          # a link to the corresponding web service to retrieve it. In addition,
          # a unique identifier to the corresponding report and link to the web
          # service to retrieve it are also returned. The report template must
          # be owned by you.
          #
          # The following are limitations you should be aware of:
          # * The maximum number of metrics that you are allowed to specify is
          #   the same limit that you have in the user interface.
          #
          # The list of metrics are specified by their unique identifiers and
          # will be configured in the report template based on the order
          # provided in the XML request with the exception of the 4 metrics
          # listed below. The 4 metrics listed below are always included as the
          # first 4 metrics in the report template even if they are not
          # explicitly specified.
          #
          # * Property Id (id 448)
          # * Property Name (id 443)
          # * Parent Property Id (id 449)
          # * Parent Property Name (id 1301)
          #
          # @param template_id [Integer]
          # @param report_template [PortfolioManager::Xml::ReportTemplateType]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/template/put
          def edit_report_template(template_id, report_template)
            request(Net::HTTP::Put, path_for("reports", "templates", template_id), {}, {}, report_template, "reportTemplate", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Report Template
          #
          # This web service deletes a specified report template. The report
          # template must be owned by you. The corresponding report is also
          # deleted. The report template cannot be deleted if it's submitted for
          # processing or is being generated.
          #
          # @param template_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/template/delete
          def delete_report_template(template_id)
            request(Net::HTTP::Delete, path_for("reports", "templates", template_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Report Template List
          #
          # This web service returns a list of report templates in your account.
          #
          # @param type [nil, "CUSTOM", "ENERGY_STAR", "DATA_REQUEST"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/allTemplate/get
          def get_report_template_list(type = nil)
            request(Net::HTTP::Get, path_for("reports", "templates"), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Custom Reporting (Report Management)
      module CustomReportingReportManagement
        # Live Environment
        module Live
          # Get Report
          #
          # This web service retrieves the the list of properties, {https://portfoliomanager.energystar.gov/webservices/home/test/api/reporting/customReports/timeframes timeframe},
          # current status, and the unique identifier to the corresponding
          # template for a specific report. The report must be owned by you.
          #
          # @param report_id [Integer]
          # @return [PortfolioManager::Xml::Report]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/report/get
          def get_report(report_id)
            request(Net::HTTP::Get, path_for("reports", report_id), {}, {}, nil, nil, PortfolioManager::Xml::Report, basic_auth: true)
          end

          # Edit Report
          #
          # This web service updates a specified report based on the list of
          # properties and {https://portfoliomanager.energystar.gov/webservices/home/test/api/reporting/customReports/timeframes timeframe}
          # provided in the XML request. The web service returns the unique
          # identifier to the report and a link to the corresponding web service
          # to retrieve it. The report must be owned by you.
          #
          # The following are limitations you should be aware of:
          # * The report cannot be updated if it's already submitted for
          #   processing or is being generated.
          # * A maximum of 5,000 properties is allowed and replaces the previous
          #   set of properties in the report.
          # * A maximum of 2 million data points are allowed in a report
          #   (#properties * #metrics * #time periods).
          #
          # @param report_id [Integer]
          # @param report [PortfolioManager::Xml::Report]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/report/put
          def edit_report(report_id, report)
            request(Net::HTTP::Put, path_for("reports", report_id), {}, {}, report, "report", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Report Results
          #
          # This web service retrieves the results of a report. It returns a
          # file stream of either an Excel file or a XML file. The report must
          # be owned by you.
          #
          # @param report_id [Integer]
          # @param type ["EXCEL", "XML"]
          # @return [PortfolioManager::Xml::Report]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reportResults/get
          def get_report_results(report_id, type = "XML")
            request(Net::HTTP::Get, path_for("reports", report_id), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::Report, basic_auth: true)
          end

          # Generate Report
          #
          # This web service generates a specific report. It returns a link to
          # the corresponding web service to retrieve the generation status. The
          # report must be owned by you.
          #
          # The following are limitations you should be aware of:
          # * Similar to the user interface, generated reports will only be
          #   available for 90 days. After that time you just need to generate
          #   the report again to populate your template with data.
          # * You can only have a maximum of 5 reports generating at one time.
          #   To submit more, you will need to wait for at least one of your 5
          #   reports to finish generating.
          #
          # @param report_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/generateReport/post
          def generate_report(report_id)
            request(Net::HTTP::Post, path_for("reports", report_id, "generate"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Report Status
          #
          # This web service returns information on the status of the report.
          # The report must be owned by you.
          #
          # The following are valid statuses:
          # * INITIALIZED - Indicates that the report was initially created or
          #   its configuration (i.e., timeframe, properties, metrics, etc.) has
          #   been updated.
          # * SUBMITTED - Indicates that the report has been submitted for
          #   generation and is waiting to be generated.
          # * IN_PROCESS - Indicates that the report is currently being
          #   generated.
          # * FAILED - Indicates that the report encountered an unknown error
          #   during the generation step.
          # * GENERATED - Indicates that report has completed generation and is
          #   available for download.
          #
          # @param report_id [Integer]
          # @return [PortfolioManager::Xml::ReportStatusDef]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reportStatus/get
          def get_report_status(report_id)
            request(Net::HTTP::Get, path_for("reports", report_id, "status"), {}, {}, nil, nil, PortfolioManager::Xml::ReportStatusDef, basic_auth: true)
          end

          # Get Report List
          #
          # This web service returns a list of reports in your account.
          #
          # @param type [nil, "CUSTOM", "ENERGY_STAR", "DATA_REQUEST", "DATA_RESPONSE"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/allReport/get
          def get_report_list(type = nil)
            request(Net::HTTP::Get, path_for("reports"), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Custom Reporting (Responding to Data Requests)
      module CustomReportingRespondingToDataRequests
        # Live Environment
        module Live
          # Get Data Request
          #
          # This web service returns the information for a specific customer's
          # data request. The customer can reference a user you're connected to
          # or your own account.
          #
          # @param customer_id [Integer]
          # @param data_request_id [Integer]
          # @return [PortfolioManager::Xml::DataRequest]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/customerDataRequest/get
          def get_data_request(customer_id, data_request_id)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataRequests", data_request_id), {}, {}, nil, nil, PortfolioManager::Xml::DataRequest, basic_auth: true)
          end

          # Get Data Requests
          #
          # This web service returns a list of data requests that were accessed
          # by a specific customer. The customer can reference a user you're
          # connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param status [nil, "OPEN", "CLOSED", "ALL"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/customerDataRequests/get
          def get_data_requests(customer_id, status = nil)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataRequests"), {
              "status" => status,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Add Data Response
          #
          # This web service creates/prepares a data response to a specific
          # customer's data request. The `customer` can reference a user you're
          # connected to or your own account. The information provided indicates
          # the specific data request and a list of properties. This
          # initialization is required if you are responding to a data request
          # for the first time.
          #
          # @param customer_id [Integer]
          # @param data_response [PortfolioManager::Xml::DataResponse]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/dataResponse/post
          def add_data_response(customer_id, data_response)
            request(Net::HTTP::Post, path_for("reports", "customers", customer_id, "dataResponses"), {}, {}, data_response, "dataResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Response
          #
          # This web service retrieves information for a specific customer's
          # data response. The information returned includes the data request
          # identifier and a list of properties associated to the data response.
          # The corresponding metric calculation values to the data response are
          # not returned. The customer can reference a user you're connected to
          # or your own account.
          #
          # NOTE: If the data response has not been submitted (i.e., sent) and
          # the corresponding data request is closed then a 403 (access denied)
          # is returned.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @return [PortfolioManager::Xml::DataResponse]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/dataResponse/get
          def get_data_response(customer_id, data_response_id)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", data_response_id), {}, {}, nil, nil, PortfolioManager::Xml::DataResponse, basic_auth: true)
          end

          # Edit Data Response
          #
          # This web service updates the list of properties to a specific
          # customer's data response. The list of properties provided replaces
          # the list of the properties currently associated to the customer's
          # data response. The customer can reference a user you're connected to
          # or your own account.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @param data_response [PortfolioManager::Xml::DataResponse]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/dataResponse/put
          def edit_data_response(customer_id, data_response_id, data_response)
            request(Net::HTTP::Put, path_for("reports", "customers", customer_id, "dataResponses", data_response_id), {}, {}, data_response, "dataResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Delete Data Response
          #
          # This web service deletes a specific customer's data response. The
          # data response must not already been submitted (i.e., sent). The
          # customer can reference a user you're connected to or your own
          # account.
          #
          # NOTE: If the data response has not been submitted (i.e., sent) and
          # the corresponding data request is closed then a 403 (access denied)
          # is returned.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/dataResponse/delete
          def delete_data_response(customer_id, data_response_id)
            request(Net::HTTP::Delete, path_for("reports", "customers", customer_id, "dataResponses", data_response_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Response Errors
          #
          # This web service retrieves the errors associated to a specific
          # customer's data response preview. The errors include the list of
          # properties that failed to calculate the Site EUI and/or Total Water
          # Use. The error information is returned as a file stream of either an
          # Excel file or a XML file. The `customer` can reference a user you're
          # connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @param type ["EXCEL", "XML"]
          # @return [PortfolioManager::Xml::ResponseStatus]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/downloadErrorsDataResponse/get
          def get_data_response_errors(customer_id, data_response_id, type = "XML")
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "errors"), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseStatus, basic_auth: true)
          end

          # Generate Data Response Preview
          #
          # This web services generates a preview of a specific customer's data
          # response. The `customer` can reference a user you're connected to or
          # your own account.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/generateDataResponse/post
          def generate_response_data_preview(customer_id, data_response_id)
            request(Net::HTTP::Post, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "generate"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Response Receipt
          #
          # This web service retrieves the receipt (PDF file) for a specific
          # customer's data response. It returns a file stream of a PDF file and
          # the data response must be already submitted (i.e., sent). The
          # `customer` can reference a user you're connected to or your own
          # account.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/receiptDataResponse/get
          def get_data_response_receipt(customer_id, data_response_id)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "receipt", "download"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Submit Data Response
          #
          # This web service submits and finalizes a specific customer's data
          # response. The submission includes a list of email addresses that
          # will receive a confirmation, the file format of the copy of the data
          # that is attached to the email attachment, and whether the submission
          # should ignore any errors where a Site EUI and/or Total Water Use
          # calculations could not be determined. The `customer` can reference a
          # user you're connected to or your own account.
          #
          # Note that the E-Sign Response step that is in the user interface is
          # implied in this web service.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @param send_data_response [PortfolioManager::Xml::SendDataResponse]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/sendDataResponse/post
          def submit_data_response(customer_id, data_response_id, send_data_response)
            request(Net::HTTP::Post, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "send"), {}, {}, send_data_response, "sendDataResponse", PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Response Status
          #
          # This web service returns the information on the status of a specific
          # customer's data response and any helpful information to troubleshoot
          # errors. The `customer` can reference a user you're connected to or
          # your own account.
          #
          # The following are valid statuses:
          # * INITIALIZED - Indicates that the configuration of the data
          #   response was initially created or its configuration
          #   (i.e., properties) has been updated.
          # * SUBMITTED - Indicates that the data response has been submitted
          #   for generation and is waiting to be generated.
          # * IN_PROCESS - Indicates that the data response is currently being
          #   generated.
          # * FAILED - Indicates that the data response completed generating but
          #   has encountered an unknown error.
          # * GENERATED - Indicates that data response has completed generating
          #   with no errors.
          # * GENERATED_WITH_ERRORS - Indicates that data response has completed
          #   generating with no errors. Links are provided to download the
          #   errors.
          # * SENT - Indicates that the data response has been sent.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @return [PortfolioManager::Xml::ResponseStatus]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/statusDataResponse/get
          def get_data_response_status(customer_id, data_response_id)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "status"), {}, {}, nil, nil, PortfolioManager::Xml::ResponseStatus, basic_auth: true)
          end

          # Delete Data Request Access
          #
          # This web service deletes a specific customer's data request access.
          # The data request must be closed. The data request itself is not
          # deleted – just the customer's access to it. The `customer` can
          # reference a user you're connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param data_request_id [Integer]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/dataRequest/delete
          def delete_data_request_access(customer_id, data_request_id)
            request(Net::HTTP::Delete, path_for("reports", "customers", customer_id, "dataResponses", "dataRequests", data_request_id), {}, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get All Data Responses Results
          #
          # This web service retrieves all of the data responses to a specific
          # customer's data request and returns a file stream of either an Excel
          # file or a XML file. All of the corresponding data responses must
          # already be submitted (i.e., sent). The `customer` can reference a
          # user you're connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param data_request_id [Integer]
          # @param type ["EXCEL", "XML"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/downloadDataResponse/get
          def get_all_data_responses_results(customer_id, data_request_id, type = "XML")
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", "dataRequests", data_request_id, "download"), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Data Responses
          #
          # This web service returns a list of all of data responses for a
          # specific customer's data request. The `customer` can reference a
          # user you're connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param data_request_id [nil, Integer]
          # @param status [nil, "OPEN", "CLOSED", "ALL"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/customerDataResponses/get
          def get_data_response(customer_id, data_request_id = nil, status = nil)
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses"), {
              "dataRequestId" => data_request_id,
              "status" => status,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end

          # Get Preview Data Response Results
          #
          # This web service retrieves a specific customer's data response
          # preview and returns the results as a file stream of either an Excel
          # file or a XML file.  The data response must be in preview and not
          # already submitted (i.e., sent). The `customer` can reference a user
          # you're connected to or your own account.
          #
          # @param customer_id [Integer]
          # @param data_response_id [Integer]
          # @param type ["EXCEL", "XML"]
          # @return [PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/downloadPreviewDataResponse/get
          def get_preview_data_response_results(customer_id, data_response_id, type = "XML")
            request(Net::HTTP::Get, path_for("reports", "customers", customer_id, "dataResponses", data_response_id, "download"), {
              "type" => type,
            }, {}, nil, nil, PortfolioManager::Xml::ResponseType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # Reporting
      module Reporting
        # Live Environment
        module Live
          # Get Design Metrics
          #
          # This web service returns a list of metric values for a specific
          # property design based on a specified measurement system. If the
          # property contains operational data then an additional set of metric
          # values based on the property's current period ending date is also
          # returned. The property must already be shared with you. A full list
          # of the reporting metrics that are available through this service and
          # related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @note Metrics that are readily available through other web services,
          #   such as {PortfolioManager::Services::Property::Design::Live#get_design GET /property/(propertyId)/design}
          #   are not included in the reporting web services, since they are
          #   already accessible elsewhere.
          #
          # @param property_id [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/designMetrics/get
          def get_design_metrics(property_id, measurement_system = nil)
            request(Net::HTTP::Get, path_for("property", property_id, "design", "metrics"), {
              "measurementSystem" => measurement_system,
            }, {}, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Metrics
          #
          # This web service returns a list of metric values for a specific
          # property and period ending date based on the specified set of
          # metrics and measurement system. The property must already be shared
          # with you. A full list of the reporting metrics that are available
          # through this service and related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @note Metrics that are readily available through other web services,
          #   such as {PortfolioManager::Services::Property::Property::Live#get_property GET /property/(propertyId)}
          #   and {PortfolioManager::Services::PropertyUse::PropertyUse::Live#get_property_use GET /propertyUse/(propertyUseId)}
          #   are not included in the reporting web services, since they are
          #   already accessible elsewhere.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @param metrics [Array<#to_s>]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/propertyMetrics/get
          def get_property_metrics(property_id, year, month, measurement_system = nil, metrics = [])
            request(Net::HTTP::Get, path_for("property", property_id, "metrics"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {
              "PM-Metrics" => metrics.collect(&:to_s).join(","),
            }, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Monthly Metrics
          #
          # This web service returns a list of metric values for a specific
          # property and period ending date based on the specified set of
          # metrics and measurement system. Each monthly metric will return 12
          # values (a value for each month). The months returned are all months
          # captured within the specified annual period ending date. The metrics
          # will reflect monthly totals of meters that you have access to.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @param metrics [Array<#to_s>]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/propertyMetricsMonthly/get
          def get_property_monthly_metrics(property_id, year, month, measurement_system = nil, metrics = [])
            request(Net::HTTP::Get, path_for("property", property_id, "metrics", "monthly"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {
              "PM-Metrics" => metrics.collect(&:to_s).join(","),
            }, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Property Use Metrics
          #
          # This web service returns a list of time-weighted use detail values
          # for a specific property, period ending date, and measurement system.
          # The property must already be shared with you. A full list of the
          # reporting metrics that are available through this service and
          # related web services can be found {https://downloads.energystar.gov/bi/portfolio-manager/Custom_Reporting_Metric_Inventory_en_US.xlsx here}.
          # The list includes the metric name, the appropriate web service call
          # for the metric, and a glossary link. It can be sorted and filtered
          # for ease of finding the metrics that you need.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @param measurement_system [nil, "EPA", "METRIC"]
          # @return [PortfolioManager::Xml::PropertyMetricsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/useDetailsMetrics/get
          def get_property_use_metrics(property_id, year, month, measurement_system = nil)
            request(Net::HTTP::Get, path_for("property", property_id, "useDetails", "metrics"), {
              "year" => year,
              "month" => month,
              "measurementSystem" => measurement_system,
            }, {}, nil, nil, PortfolioManager::Xml::PropertyMetricsType, basic_auth: true)
          end

          # Get Reasons for No Energy Score
          #
          # This web service returns a list of reasons that explain why the
          # specific property cannot receive an ENERGY STAR score for a certain
          # period ending date. If both the year and month are not provided then
          # the property's current energy period ending date is used. Please
          # refer to this {https://downloads.energystar.gov/bi/portfolio-manager/Alerts_Public_Reference_en_US.xlsx Alert Inventory}
          # for a list of possible reasons you might see in the response. Refer
          # specifically to the alerts that are denoted "yes" in the N/A
          # Explanations column; these are the alerts that apply when a metric,
          # like the ENERGY STAR score, cannot be computed.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @return [PortfolioManager::Xml::AlertsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reasonsForNoScore/get
          def get_reasons_for_no_energy_score(property_id, year, month)
            request(Net::HTTP::Get, path_for("property", property_id, "reasonsForNoScore"), {
              "year" => year,
              "month" => month,
            }, {}, nil, nil, PortfolioManager::Xml::AlertsType, basic_auth: true)
          end

          # Get Reasons for No Water Score
          #
          # This web service returns a list of reasons that explain why the
          # specific property cannot receive an ENERGY STAR score for a certain
          # period ending date. If both the year and month are not provided then
          # the property's current water period ending date is used. Please
          # refer to this {https://downloads.energystar.gov/bi/portfolio-manager/Alerts_Public_Reference_en_US.xlsx Alert Inventory}
          # for a list of possible reasons you might see in the response. Refer
          # specifically to the alerts that are denoted "yes" in the N/A
          # Explanations column; these are the alerts that apply when a metric,
          # like the ENERGY STAR score, cannot be computed.
          #
          # @param property_id [Integer]
          # @param year [Integer]
          # @param month [Integer]
          # @return [PortfolioManager::Xml::AlertsType, PortfolioManager::Xml::ResponseType]
          # @raise [PortfolioManager::HTTPBasicCredentialsNotFoundError]
          # @raise [PortfolioManager::HTTPResponseError]
          # @see https://portfoliomanager.energystar.gov/webservices/home/api/reporting/reasonsForNoWaterScore/get
          def get_reasons_for_no_water_score(property_id, year, month)
            request(Net::HTTP::Get, path_for("property", property_id, "reasonsForNoWaterScore"), {
              "year" => year,
              "month" => month,
            }, {}, nil, nil, PortfolioManager::Xml::AlertsType, basic_auth: true)
          end
        end

        # Test Environment
        module Test
        end
      end

      # All Reporting Services
      module All
        # Live Environment
        module Live
          include PortfolioManager::Services::Reporting::CustomReportingTemplateManagement::Live
          include PortfolioManager::Services::Reporting::CustomReportingReportManagement::Live
          include PortfolioManager::Services::Reporting::CustomReportingRespondingToDataRequests::Live
          include PortfolioManager::Services::Reporting::Reporting::Live
        end

        # Test Environment
        module Test
          include PortfolioManager::Services::Reporting::CustomReportingTemplateManagement::Test
          include PortfolioManager::Services::Reporting::CustomReportingReportManagement::Test
          include PortfolioManager::Services::Reporting::CustomReportingRespondingToDataRequests::Test
          include PortfolioManager::Services::Reporting::Reporting::Test
        end
      end
    end
  end
end
