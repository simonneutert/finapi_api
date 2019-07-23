=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module FinapiApiClient
  class BankConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connect a new interface
    # Connects new interface to an existing bank connection for a specific user. Must pass the connection credentials and the user's access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/<id> service.<br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>
    # @param body Connect interface parameters
    # @param [Hash] opts the optional parameters
    # @return [BankConnection]
    def connect_interface(body, opts = {})
      data, _status_code, _headers = connect_interface_with_http_info(body, opts)
      data
    end

    # Connect a new interface
    # Connects new interface to an existing bank connection for a specific user. Must pass the connection credentials and the user&#39;s access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/&lt;id&gt; service.&lt;br/&gt;&lt;br/&gt;NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a &#39;Location&#39; header, which contains the URL to the web form. In this case, you must forward your user to finAPI&#39;s web form. For a detailed explanation of the Web Form Flow, please refer to this article: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/360002596391&#39; target&#x3D;&#39;_blank&#39;&gt;finAPI&#39;s Web Form Flow&lt;/a&gt;
    # @param body Connect interface parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnection, Fixnum, Hash)>] BankConnection data, response status code and response headers
    def connect_interface_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.connect_interface ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankConnectionsApi.connect_interface"
      end
      # resource path
      local_var_path = '/api/v1/bankConnections/connectInterface'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#connect_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete all bank connections
    # Delete all bank connections of the user that is authorized by the access_token. Must pass the user's access_token.<br/><br/>Notes: <br/>- All notification rules that are connected to any specific bank connection will get deleted as well. <br/>- If at least one bank connection is busy (currently in the process of import, update, or transactions categorization), then this service will perform no action at all.
    # @param [Hash] opts the optional parameters
    # @return [IdentifierList]
    def delete_all_bank_connections(opts = {})
      data, _status_code, _headers = delete_all_bank_connections_with_http_info(opts)
      data
    end

    # Delete all bank connections
    # Delete all bank connections of the user that is authorized by the access_token. Must pass the user&#39;s access_token.&lt;br/&gt;&lt;br/&gt;Notes: &lt;br/&gt;- All notification rules that are connected to any specific bank connection will get deleted as well. &lt;br/&gt;- If at least one bank connection is busy (currently in the process of import, update, or transactions categorization), then this service will perform no action at all.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentifierList, Fixnum, Hash)>] IdentifierList data, response status code and response headers
    def delete_all_bank_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.delete_all_bank_connections ...'
      end
      # resource path
      local_var_path = '/api/v1/bankConnections'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IdentifierList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#delete_all_bank_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a bank connection
    # Delete a single bank connection of the user that is authorized by the access_token, including all of its accounts and their transactions and balance data. Must pass the connection's identifier and the user's access_token.<br/><br/>Notes: <br/>- All notification rules that are connected to the bank connection will get adjusted so that they no longer have this connection listed. Notification rules that are connected to just this bank connection (and no other connection) will get deleted altogether. <br/>- A bank connection cannot get deleted while it is in the process of import, update, or transactions categorization.
    # @param id Identifier of the bank connection to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_bank_connection(id, opts = {})
      delete_bank_connection_with_http_info(id, opts)
      nil
    end

    # Delete a bank connection
    # Delete a single bank connection of the user that is authorized by the access_token, including all of its accounts and their transactions and balance data. Must pass the connection&#39;s identifier and the user&#39;s access_token.&lt;br/&gt;&lt;br/&gt;Notes: &lt;br/&gt;- All notification rules that are connected to the bank connection will get adjusted so that they no longer have this connection listed. Notification rules that are connected to just this bank connection (and no other connection) will get deleted altogether. &lt;br/&gt;- A bank connection cannot get deleted while it is in the process of import, update, or transactions categorization.
    # @param id Identifier of the bank connection to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bank_connection_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.delete_bank_connection ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankConnectionsApi.delete_bank_connection"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/[\\d]+/)
        fail ArgumentError, "invalid value for 'id' when calling BankConnectionsApi.delete_bank_connection, must conform to the pattern /[\\d]+/."
      end

      # resource path
      local_var_path = '/api/v1/bankConnections/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#delete_bank_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit a bank connection
    # Edit bank connection data. Must pass the connection's identifier and the user's access_token.<br/><br/>Note that a bank connection's credentials cannot be changed while it is in the process of import, update, or transactions categorization.<br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>
    # @param id Identifier of the bank connection to change the parameters for
    # @param body New bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [BankConnection]
    def edit_bank_connection(id, body, opts = {})
      data, _status_code, _headers = edit_bank_connection_with_http_info(id, body, opts)
      data
    end

    # Edit a bank connection
    # Edit bank connection data. Must pass the connection&#39;s identifier and the user&#39;s access_token.&lt;br/&gt;&lt;br/&gt;Note that a bank connection&#39;s credentials cannot be changed while it is in the process of import, update, or transactions categorization.&lt;br/&gt;&lt;br/&gt;NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a &#39;Location&#39; header, which contains the URL to the web form. In this case, you must forward your user to finAPI&#39;s web form. For a detailed explanation of the Web Form Flow, please refer to this article: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/360002596391&#39; target&#x3D;&#39;_blank&#39;&gt;finAPI&#39;s Web Form Flow&lt;/a&gt;
    # @param id Identifier of the bank connection to change the parameters for
    # @param body New bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnection, Fixnum, Hash)>] BankConnection data, response status code and response headers
    def edit_bank_connection_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.edit_bank_connection ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankConnectionsApi.edit_bank_connection"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/[\\d]+/)
        fail ArgumentError, "invalid value for 'id' when calling BankConnectionsApi.edit_bank_connection, must conform to the pattern /[\\d]+/."
      end

      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankConnectionsApi.edit_bank_connection"
      end
      # resource path
      local_var_path = '/api/v1/bankConnections/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#edit_bank_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all bank connections
    # Get bank connections of the user that is authorized by the access_token. Must pass the user's access_token. You can set optional search criteria to get only those bank connections that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids A comma-separated list of bank connection identifiers. If specified, then only bank connections whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
    # @return [BankConnectionList]
    def get_all_bank_connections(opts = {})
      data, _status_code, _headers = get_all_bank_connections_with_http_info(opts)
      data
    end

    # Get all bank connections
    # Get bank connections of the user that is authorized by the access_token. Must pass the user&#39;s access_token. You can set optional search criteria to get only those bank connections that you are interested in. If you do not specify any search criteria, then this service functions as a &#39;get all&#39; service.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids A comma-separated list of bank connection identifiers. If specified, then only bank connections whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
    # @return [Array<(BankConnectionList, Fixnum, Hash)>] BankConnectionList data, response status code and response headers
    def get_all_bank_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.get_all_bank_connections ...'
      end
      # resource path
      local_var_path = '/api/v1/bankConnections'

      # query parameters
      query_params = {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnectionList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#get_all_bank_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a bank connection
    # Get a single bank connection of the user that is authorized by the access_token. Must pass the connection's identifier and the user's access_token.
    # @param id Identifier of requested bank connection
    # @param [Hash] opts the optional parameters
    # @return [BankConnection]
    def get_bank_connection(id, opts = {})
      data, _status_code, _headers = get_bank_connection_with_http_info(id, opts)
      data
    end

    # Get a bank connection
    # Get a single bank connection of the user that is authorized by the access_token. Must pass the connection&#39;s identifier and the user&#39;s access_token.
    # @param id Identifier of requested bank connection
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnection, Fixnum, Hash)>] BankConnection data, response status code and response headers
    def get_bank_connection_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.get_bank_connection ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankConnectionsApi.get_bank_connection"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/[\\d]+/)
        fail ArgumentError, "invalid value for 'id' when calling BankConnectionsApi.get_bank_connection, must conform to the pattern /[\\d]+/."
      end

      # resource path
      local_var_path = '/api/v1/bankConnections/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#get_bank_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get multiple bank connections
    # Get a list of multiple bank connections of the user that is authorized by the access_token. Must pass the connections' identifiers and the user's access_token. Connections whose identifiers do not exist or do not relate to the authorized user will not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list). WARNING: This service is deprecated and will be removed at some point. If you want to get multiple bank connections, please instead use the service 'Get all bank connections' and pass a comma-separated list of identifiers as a parameter 'ids'.
    # @param ids Comma-separated list of identifiers of requested bank connections
    # @param [Hash] opts the optional parameters
    # @return [BankConnectionList]
    def get_multiple_bank_connections(ids, opts = {})
      data, _status_code, _headers = get_multiple_bank_connections_with_http_info(ids, opts)
      data
    end

    # Get multiple bank connections
    # Get a list of multiple bank connections of the user that is authorized by the access_token. Must pass the connections&#39; identifiers and the user&#39;s access_token. Connections whose identifiers do not exist or do not relate to the authorized user will not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list). WARNING: This service is deprecated and will be removed at some point. If you want to get multiple bank connections, please instead use the service &#39;Get all bank connections&#39; and pass a comma-separated list of identifiers as a parameter &#39;ids&#39;.
    # @param ids Comma-separated list of identifiers of requested bank connections
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnectionList, Fixnum, Hash)>] BankConnectionList data, response status code and response headers
    def get_multiple_bank_connections_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.get_multiple_bank_connections ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling BankConnectionsApi.get_multiple_bank_connections"
      end
      if @api_client.config.client_side_validation && ids !~ Regexp.new(/[\\d]+,[\\d,]+/)
        fail ArgumentError, "invalid value for 'ids' when calling BankConnectionsApi.get_multiple_bank_connections, must conform to the pattern /[\\d]+,[\\d,]+/."
      end

      # resource path
      local_var_path = '/api/v1/bankConnections/{ids}'.sub('{' + 'ids' + '}', ids.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnectionList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#get_multiple_bank_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Import a new bank connection
    # Imports a new bank connection for a specific user. Must pass the connection credentials and the user's access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/<id> service.<br/><br/>You can also import a \"demo connection\" which contains a single bank account with some pre-defined transactions. To import the demo connection, you need to pass the identifier of the \"finAPI Test Bank\". In case of demo connection import, any other fields besides the bank identifier can remain unset. The bankingUserId, bankingCustomerId, bankingPin, and storeSecrets fields will be stored if you pass them, however they will not be regarded when updating the demo connection (in other words: It doesn't matter what credentials you choose for the demo connection). Note however that if you want to import the demo connection multiple times for the same user, you must use a different bankingUserId and/or bankingCustomerId for each of the imports. Also note that the skipPositionsDownload flag is ignored for the demo bank connection, i.e. when importing the demo bank connection, you will always get the transactions for its account. You can enable multi-step authentication for the demo bank connection by setting the bank connection name to \"MSA\".<br/><br/><b>For a more in-depth understanding of the import process, please also read this article on our Dev Portal: <a href='https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts' target='_blank'>Import & Update of Bank Connections / Accounts</a></b><br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>
    # @param body Import bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [BankConnection]
    def import_bank_connection(body, opts = {})
      data, _status_code, _headers = import_bank_connection_with_http_info(body, opts)
      data
    end

    # Import a new bank connection
    # Imports a new bank connection for a specific user. Must pass the connection credentials and the user&#39;s access_token. All bank accounts will be downloaded and imported with their current balances, transactions and supported two-step-procedures (note that the amount of available transactions may vary between banks, e.g. some banks deliver all transactions from the past year, others only deliver the transactions from the past three months). The balance and transactions download process runs asynchronously, so this service may return before all balances and transactions have been imported. Also, all downloaded transactions will be categorized by a separate background process that runs asynchronously too. To check the status of the balance and transactions download process as well as the background categorization process, see the status flags that are returned by the GET /bankConnections/&lt;id&gt; service.&lt;br/&gt;&lt;br/&gt;You can also import a \&quot;demo connection\&quot; which contains a single bank account with some pre-defined transactions. To import the demo connection, you need to pass the identifier of the \&quot;finAPI Test Bank\&quot;. In case of demo connection import, any other fields besides the bank identifier can remain unset. The bankingUserId, bankingCustomerId, bankingPin, and storeSecrets fields will be stored if you pass them, however they will not be regarded when updating the demo connection (in other words: It doesn&#39;t matter what credentials you choose for the demo connection). Note however that if you want to import the demo connection multiple times for the same user, you must use a different bankingUserId and/or bankingCustomerId for each of the imports. Also note that the skipPositionsDownload flag is ignored for the demo bank connection, i.e. when importing the demo bank connection, you will always get the transactions for its account. You can enable multi-step authentication for the demo bank connection by setting the bank connection name to \&quot;MSA\&quot;.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;For a more in-depth understanding of the import process, please also read this article on our Dev Portal: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts&#39; target&#x3D;&#39;_blank&#39;&gt;Import &amp; Update of Bank Connections / Accounts&lt;/a&gt;&lt;/b&gt;&lt;br/&gt;&lt;br/&gt;NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a &#39;Location&#39; header, which contains the URL to the web form. In this case, you must forward your user to finAPI&#39;s web form. For a detailed explanation of the Web Form Flow, please refer to this article: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/360002596391&#39; target&#x3D;&#39;_blank&#39;&gt;finAPI&#39;s Web Form Flow&lt;/a&gt;
    # @param body Import bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnection, Fixnum, Hash)>] BankConnection data, response status code and response headers
    def import_bank_connection_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.import_bank_connection ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankConnectionsApi.import_bank_connection"
      end
      # resource path
      local_var_path = '/api/v1/bankConnections/import'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#import_bank_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove an interface
    # Remove an interface from bank connection and from all associated accounts in the bank connection. Notes: <br/>- An interface cannot get deleted while it is in the process of import or update.
    # @param body Remove interface parameters
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_interface(body, opts = {})
      remove_interface_with_http_info(body, opts)
      nil
    end

    # Remove an interface
    # Remove an interface from bank connection and from all associated accounts in the bank connection. Notes: &lt;br/&gt;- An interface cannot get deleted while it is in the process of import or update.
    # @param body Remove interface parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_interface_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.remove_interface ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankConnectionsApi.remove_interface"
      end
      # resource path
      local_var_path = '/api/v1/bankConnections/removeInterface'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#remove_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a bank connection
    # Update an existing bank connection of the user that is authorized by the access_token. Downloads and imports the current account balances and new transactions. Must pass the connection's identifier and the user's access_token. For more information about the processes of authentication, data download and transactions categorization, see POST /bankConnections/import. Note that supported two-step-procedures are updated as well. It may unset the current default two-step-procedure of the given bank connection (but only if this procedure is not supported anymore by the bank). You can also update the \"demo connection\" (in this case, the fields 'bankingPin', 'importNewAccounts', and 'skipPositionsDownload' will be ignored).<br/><br/>Note that you cannot trigger an update of a bank connection as long as there is still a previously triggered update running.<br/><br/><b>For a more in-depth understanding of the update process, please also read this article on our Dev Portal: <a href='https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts' target='_blank'>Import & Update of Bank Connections / Accounts</a></b><br/><br/>NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a 'Location' header, which contains the URL to the web form. In this case, you must forward your user to finAPI's web form. For a detailed explanation of the Web Form Flow, please refer to this article: <a href='https://finapi.zendesk.com/hc/en-us/articles/360002596391' target='_blank'>finAPI's Web Form Flow</a>
    # @param body Update bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [BankConnection]
    def update_bank_connection(body, opts = {})
      data, _status_code, _headers = update_bank_connection_with_http_info(body, opts)
      data
    end

    # Update a bank connection
    # Update an existing bank connection of the user that is authorized by the access_token. Downloads and imports the current account balances and new transactions. Must pass the connection&#39;s identifier and the user&#39;s access_token. For more information about the processes of authentication, data download and transactions categorization, see POST /bankConnections/import. Note that supported two-step-procedures are updated as well. It may unset the current default two-step-procedure of the given bank connection (but only if this procedure is not supported anymore by the bank). You can also update the \&quot;demo connection\&quot; (in this case, the fields &#39;bankingPin&#39;, &#39;importNewAccounts&#39;, and &#39;skipPositionsDownload&#39; will be ignored).&lt;br/&gt;&lt;br/&gt;Note that you cannot trigger an update of a bank connection as long as there is still a previously triggered update running.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;For a more in-depth understanding of the update process, please also read this article on our Dev Portal: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/115000296607-Import-Update-of-Bank-Connections-Accounts&#39; target&#x3D;&#39;_blank&#39;&gt;Import &amp; Update of Bank Connections / Accounts&lt;/a&gt;&lt;/b&gt;&lt;br/&gt;&lt;br/&gt;NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a &#39;Location&#39; header, which contains the URL to the web form. In this case, you must forward your user to finAPI&#39;s web form. For a detailed explanation of the Web Form Flow, please refer to this article: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/360002596391&#39; target&#x3D;&#39;_blank&#39;&gt;finAPI&#39;s Web Form Flow&lt;/a&gt;
    # @param body Update bank connection parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankConnection, Fixnum, Hash)>] BankConnection data, response status code and response headers
    def update_bank_connection_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankConnectionsApi.update_bank_connection ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BankConnectionsApi.update_bank_connection"
      end
      # resource path
      local_var_path = '/api/v1/bankConnections/update'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['finapi_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankConnection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankConnectionsApi#update_bank_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end