=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for FinapiApiClient::CategoriesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CategoriesApi' do
  before do
    # run before each test
    @instance = FinapiApiClient::CategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CategoriesApi' do
    it 'should create an instance of CategoriesApi' do
      expect(@instance).to be_instance_of(FinapiApiClient::CategoriesApi)
    end
  end

  # unit tests for create_category
  # Create a new category
  # Create a new custom transaction category for the authorized user, that can then be assigned to transactions via PATCH /transactions, and that will also be regarded in finAPI&#39;s automatic transactions categorization process. Must pass the user&#39;s access_token.
  # @param [Hash] opts the optional parameters
  # @option opts [CategoryParams] :body Parameters of the new category
  # @return [Category]
  describe 'create_category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_categories
  # Delete all categories
  # Delete all custom categories of the user that is authorized by the access_token. Must pass the user&#39;s access_token. Note that this deletes both parent categories as well as any related sub-categories.
  # @param [Hash] opts the optional parameters
  # @return [IdentifierList]
  describe 'delete_all_categories test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_category
  # Delete a category
  # Delete a single category of the user that is authorized by the access_token. Must pass the user&#39;s access_token. Note that you can only delete user-custom categories (category&#39;s where the &#39;isCustom&#39; flag is true). Also note that when deleting a parent category, all its sub-categories will be deleted as well.
  # @param id Category identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for edit_category
  # Edit a category
  # Change the name of a custom transaction category belonging to the authorized user. Must pass the user&#39;s access_token.
  # @param id Identifier of the category to edit
  # @param [Hash] opts the optional parameters
  # @option opts [EditCategoryParams] :body New category name
  # @return [Category]
  describe 'edit_category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_and_search_all_categories
  # Get and search all categories
  # Get a list of all global finAPI categories as well as all custom categories of the authorized user. Must pass the user&#39;s access_token. You can set optional search criteria to get only those categories that you are interested in. If you do not specify any search criteria, then this service functions as a &#39;get all&#39; service.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :ids A comma-separated list of category identifiers. If specified, then only categories whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
  # @option opts [String] :search If specified, then only those categories will be contained in the result whose &#39;name&#39; contains the given search string (the matching works case-insensitive). If no categories contain the search string in their name, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the name in order for a category to get included into the result.
  # @option opts [BOOLEAN] :is_custom If specified, then the result will contain only categories that are either finAPI global (in case of value &#39;false&#39;), or only categories that have been created by the authorized user (in case of value &#39;true&#39;).
  # @option opts [Integer] :page Result page that you want to retrieve.
  # @option opts [Integer] :per_page Maximum number of records per page. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
  # @option opts [Array<String>] :order Determines the order of the results. You can order the results by &#39;id&#39;, &#39;name&#39; and &#39;isCustom&#39;. The default order is &#39;id,asc&#39;. You can also order by multiple properties. In that case the order of the parameters passed is important. Example: &#39;/categories?order&#x3D;isCustom,desc&amp;order&#x3D;name&#39; will return all custom categories followed by all default categories. Both groups are ordered ascending by name. The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value. Please note that ordering by multiple fields is not supported in our swagger frontend, but you can test this feature with any HTTP tool of your choice (e.g. postman or DHC). 
  # @return [PageableCategoryList]
  describe 'get_and_search_all_categories test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cash_flows
  # Get cash flows
  # Get the cash flow(s) (&#x3D; total income, spending, and balance) for one or several categories. You can specify various criteria such as the time period to calculate the cash flows for, or what categories to do the calculations for. Note that the cash flow for a category may include the cash flows for all of its sub-categories, or not include it, depending on the &#39;includeSubCashFlows&#39; setting. Must pass the user&#39;s access_token.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search If specified, then only transactions that contain the search term in their purpose or counterpart fields will be contained in the result. Note that the search is case insensitive.
  # @option opts [String] :counterpart The counterpart is the person or institution that received your payment, or that you made the payment to. If this parameter is specified, then only transactions that contain the given term in one (or more) of their counterpart fields (&#39;counterpartName&#39;, &#39;counterpartAccountNumber&#39;, &#39;counterpartIban&#39;, &#39;counterpartBic&#39; or &#39;counterpartBlz&#39;) will be contained in the result. Note that the search is case insensitive.
  # @option opts [String] :purpose If specified, then only those transactions will be contained in the result whose purpose field contains the given search string. Note that the search is case insensitive.NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the purpose in order for a transaction to get included into the result.
  # @option opts [Array<Integer>] :account_ids A comma-separated list of account identifiers. If specified, then only transactions that relate to the given accounts will be regarded. If not specified, then all accounts will be regarded.
  # @option opts [String] :min_bank_booking_date Lower bound for a transaction&#39;s booking date as returned by the bank (&#x3D; original booking date), in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;bankBookingDate&#39; is equal to or later than the given date will be regarded.
  # @option opts [String] :max_bank_booking_date Upper bound for a transaction&#39;s booking date as returned by the bank (&#x3D; original booking date), in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;bankBookingDate&#39; is equal to or earlier than the given date will be regarded.
  # @option opts [String] :min_finapi_booking_date Lower bound for a transaction&#39;s booking date as set by finAPI, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). For details about the meaning of the finAPI booking date, please see the field&#39;s documentation in the service&#39;s response.
  # @option opts [String] :max_finapi_booking_date Upper bound for a transaction&#39;s booking date as set by finAPI, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). For details about the meaning of the finAPI booking date, please see the field&#39;s documentation in the service&#39;s response.
  # @option opts [Float] :min_amount If specified, then only transactions whose amount is equal to or greater than the given amount will be regarded. Can contain a positive or negative number with at most two decimal places. Examples: -300.12, or 90.95
  # @option opts [Float] :max_amount If specified, then only transactions whose amount is equal to or less than the given amount will be regarded. Can contain a positive or negative number with at most two decimal places. Examples: -300.12, or 90.95
  # @option opts [String] :direction If specified, then only transactions with the given direction(s) will be regarded. Use &#39;income&#39; for regarding only received payments (amount &gt;&#x3D; 0), &#39;spending&#39; for regarding only outgoing payments (amount &lt; 0), or &#39;all&#39; to regard both directions. If not specified, the direction defaults to &#39;all&#39;.
  # @option opts [Array<Integer>] :label_ids A comma-separated list of label identifiers. If specified, then only transactions that have been marked with at least one of the given labels will be contained in the result.
  # @option opts [Array<Integer>] :category_ids If specified, then the result will contain only those cash flows that relate to the given categories. Note that the cash flow for a category may include/exclude the cash flows of its sub-categories, depending on the &#39;includeSubCashFlows&#39; setting. To include the cash flow of not categorized transactions, pass the value &#39;0&#39; as categoryId. Note: When this parameter is NOT set, then the result will contain a cash flow for all categories that have transactions associated to them (this includes the &#39;null&#39;-category for the cash flow of not categorized transactions), more precisely: transactions that fulfill the filter criteria. Categories that have no associated transactions according to the filter criteria will not appear in the result. However, when you specify this parameter, then all specified categories will have a cash flow entry in the result, even if there are no associated transactions for the category (the cash flow will have income, spending and balance all set to zero).
  # @option opts [BOOLEAN] :is_new If specified, then only transactions that have their &#39;isNew&#39; flag set to true/false will be regarded for the cash flow calculations.
  # @option opts [String] :min_import_date Lower bound for a transaction&#39;s import date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;importDate&#39; is equal to or later than the given date will be regarded.
  # @option opts [String] :max_import_date Upper bound for a transaction&#39;s import date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;importDate&#39; is equal to or earlier than the given date will be regarded.
  # @option opts [BOOLEAN] :include_sub_cash_flows If it is true, then the income, spending, balance and count of transactions of a main category results from all transactions that have either this (main) category or any of its subcategories assigned (of course all transactions depends from the other filtering settings); If it is false, then the income, spending, balance and count of transactions of a main category only results from the transactions that have exactly this (main) category assigned. Default value for this parameter is &#39;true&#39;.
  # @option opts [Array<String>] :order Determines the order of the results. You can order the results by &#39;income&#39;, &#39;spending&#39;, &#39;balance&#39;, &#39;category.id&#39; or &#39;category.name&#39;. The default order for this service is &#39;category.id,asc&#39;. You can also order by multiple properties. In that case the order of the parameters passed is important. Example: &#39;/cashFlows?order&#x3D;income,desc&amp;order&#x3D;spending,asc&amp;balance,desc&#39; will return as first result the category with the highest income. If two categories have the same income, it returns the category with the highest spending first (because spending is a negative value) and so on. The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value. Please note that ordering by multiple fields is not supported in our swagger frontend, but you can test this feature with any HTTP tool of your choice (e.g. postman or DHC). 
  # @return [CashFlowList]
  describe 'get_cash_flows test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_category
  # Get a category
  # Get a single category that is either a global finAPI category or a custom category of the authorized user. Must pass the category&#39;s identifier and the user&#39;s access_token.
  # @param id Category identifier
  # @param [Hash] opts the optional parameters
  # @return [Category]
  describe 'get_category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_multiple_categories
  # Get multiple categories
  # Get a list of multiple categories that are either a global finAPI category or a custom category of the authorized user. Must pass the categories&#39; identifiers and the user&#39;s access_token. Categories whose identifiers do not exist or that relate to a different user not be contained in the result (If this applies to all of the given identifiers, then the result will be an empty list). WARNING: This service is deprecated and will be removed at some point. If you want to get multiple categories, please instead use the service &#39;Get and search all categories&#39; and pass a comma-separated list of identifiers as a parameter &#39;ids&#39;.
  # @param ids Comma-separated list of identifiers of requested categories
  # @param [Hash] opts the optional parameters
  # @return [CategoryList]
  describe 'get_multiple_categories test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for train_categorization
  # Train categorization
  # This service allows you to create user-specific categorization rules (for the user that is authorized by the access_token). Pass a categorization sample (&#x3D;set of transaction data and a target category), and finAPI will train the user&#39;s categorization rules so that similar transactions will be categorized accordingly in future. Basically, this service behaves the same as when assigning categories to existing transactions via the &#39;Edit a transaction&#39; service, with the difference that you can directly pass transaction data to this service, without the need of having any transactions actually imported in finAPI. Must pass the user&#39;s access_token.
  # @param [Hash] opts the optional parameters
  # @option opts [TrainCategorizationData] :body Categorization sample
  # @return [nil]
  describe 'train_categorization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end