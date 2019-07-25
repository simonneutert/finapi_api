=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module FinapiApi
  class WebFormsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a web form
    # Get a web form of the user that is authorized by the access_token. Must pass the web form's identifier and the user's access_token. <br/><br/>Note that every web form resource is automatically removed from the finAPI system after 24 hours after its creation.
    # @param id Identifier of web form
    # @param [Hash] opts the optional parameters
    # @return [WebForm]
    def get_web_form(id, opts = {})
      data, _status_code, _headers = get_web_form_with_http_info(id, opts)
      data
    end

    # Get a web form
    # Get a web form of the user that is authorized by the access_token. Must pass the web form&#39;s identifier and the user&#39;s access_token. &lt;br/&gt;&lt;br/&gt;Note that every web form resource is automatically removed from the finAPI system after 24 hours after its creation.
    # @param id Identifier of web form
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebForm, Fixnum, Hash)>] WebForm data, response status code and response headers
    def get_web_form_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebFormsApi.get_web_form ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebFormsApi.get_web_form"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/[\d]+/)
        fail ArgumentError, "invalid value for 'id' when calling WebFormsApi.get_web_form, must conform to the pattern /[\d]+/."
      end

      # resource path
      local_var_path = '/api/v1/webForms/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'WebForm')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebFormsApi#get_web_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end