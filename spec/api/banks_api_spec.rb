=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for FinapiApi::BanksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BanksApi' do
  before do
    # run before each test
    @instance = FinapiApi::BanksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BanksApi' do
    it 'should create an instance of BanksApi' do
      expect(@instance).to be_instance_of(FinapiApi::BanksApi)
    end
  end

  # unit tests for get_and_search_all_banks
  # Get and search all banks
  # Get and search banks from finAPI&#39;s database of banks. Must pass the authorized user&#39;s access_token, or your client&#39;s access_token. You can set optional search criteria to get only those banks that you are interested in. If you do not specify any search criteria, then this service functions as a &#39;get all&#39; service.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :ids A comma-separated list of bank identifiers. If specified, then only banks whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
  # @option opts [String] :search If specified, then only those banks will be contained in the result whose &#39;name&#39;, &#39;blz&#39;, &#39;bic&#39; or &#39;city&#39; contains the given search string (the matching works case-insensitive). If no banks contain the search string in any of the regarded fields, then the result will be an empty list. Note that you may also pass an IBAN in this field, in which case finAPI will try to find the related bank in its database and regard only this bank for the search. Also note: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must apply to a bank in order for it to get included into the result.
  # @option opts [BOOLEAN] :is_supported If specified, then only supported (in case of &#39;true&#39; value) or unsupported (in case of &#39;false&#39; value) banks will be regarded.  NOTE: This field is deprecated and will be removed at some point. Please refer to field &#39;supportedInterfaces&#39; instead.
  # @option opts [BOOLEAN] :pins_are_volatile If specified, then only those banks will be regarded that have the given value (true or false) for their &#39;pinsAreVolatile&#39; field.  NOTE: This field is deprecated and will be removed at some point.
  # @option opts [Array<String>] :supported_data_sources Comma-separated list of data sources. Possible values: WEB_SCRAPER,FINTS_SERVER. If this parameter is specified, then only those banks will be regarded in the search that support ALL of the given data sources. Note that this does NOT imply that those data sources must be the only data sources that are supported by a bank.  NOTE: This field is deprecated and will be removed at some point. Please refer to field &#39;supportedInterfaces&#39; instead.
  # @option opts [Array<String>] :supported_interfaces Comma-separated list of bank interfaces. Possible values: FINTS_SERVER,WEB_SCRAPER,XS2A. If this parameter is specified, then all the banks that support at least one of the given interfaces will be returned. Note that this does NOT imply that those interfaces must be the only ones that are supported by a bank.
  # @option opts [Array<String>] :location Comma-separated list of two-letter country codes (ISO 3166 ALPHA-2). If set, then only those banks will be regarded in the search that are located in the specified countries. Notes: Banks which do not have a location set (i.e. international institutes) will ALWAYS be regarded in the search, independent of what you specify for this field. When you pass a country code that doesn&#39;t exist in the ISO 3166 ALPHA-2 standard, then the service will respond with 400 BAD_REQUEST.
  # @option opts [BOOLEAN] :is_test_bank If specified, then only those banks will be regarded that have the given value (true or false) for their &#39;isTestBank&#39; field.
  # @option opts [Integer] :page Result page that you want to retrieve.
  # @option opts [Integer] :per_page Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
  # @option opts [Array<String>] :order Determines the order of the results. You can order the results by &#39;id&#39;, &#39;name&#39;, &#39;blz&#39;, &#39;bic&#39; or &#39;popularity&#39;. The default order for all services is &#39;id,asc&#39;. You can also order by multiple properties. In that case the order of the parameters passed is important. Example: &#39;/banks?order&#x3D;name,desc&amp;order&#x3D;id,asc&#39; will return banks ordered by &#39;name&#39; (descending), where banks with the same &#39;name&#39; are ordered by &#39;id&#39; (ascending). The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value. Please note that ordering by multiple fields is not supported in our swagger frontend, but you can test this feature with any HTTP tool of your choice (e.g. postman or DHC). 
  # @return [PageableBankList]
  describe 'get_and_search_all_banks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bank
  # Get a bank
  # Get a single bank from finAPI&#39;s database of banks. You have to pass the bank&#39;s identifier, and either the authorized user&#39;s access_token, or your client&#39;s access token.
  # @param id Identifier of requested bank
  # @param [Hash] opts the optional parameters
  # @return [Bank]
  describe 'get_bank test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_multiple_banks
  # Get multiple banks
  # Get a list of multiple banks from finAPI&#39;s database of banks. You have to pass a list of bank identifiers, and either the authorized user&#39;s access_token, or your client&#39;s access token. Note that banks whose identifiers do not exist will not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list).&lt;br/&gt;&lt;br/&gt;&lt;b&gt;WARNING&lt;/b&gt;: This service is deprecated and will be removed at some point. If you want to get multiple banks, please instead use the service &#39;Get and search all banks&#39; and pass a comma-separated list of identifiers with the parameter &#39;ids&#39;.
  # @param ids Comma-separated list of identifiers of requested banks
  # @param [Hash] opts the optional parameters
  # @return [BankList]
  describe 'get_multiple_banks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
