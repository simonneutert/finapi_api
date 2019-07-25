=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for FinapiApi::ClientConfigurationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClientConfigurationApi' do
  before do
    # run before each test
    @instance = FinapiApi::ClientConfigurationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientConfigurationApi' do
    it 'should create an instance of ClientConfigurationApi' do
      expect(@instance).to be_instance_of(FinapiApi::ClientConfigurationApi)
    end
  end

  # unit tests for edit_client_configuration
  # Edit client configuration
  # Edit your client&#39;s configuration. Must pass your global (i.e. client) access_token.&lt;br/&gt;&lt;br/&gt; &lt;b&gt;NOTE&lt;/b&gt;: When token validity periods are changed, this only applies to newly requested tokens, and does not change the expiration time of already existing tokens.
  # @param [Hash] opts the optional parameters
  # @option opts [ClientConfigurationParams] :body Client configuration parameters
  # @return [ClientConfiguration]
  describe 'edit_client_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_client_configuration
  # Get client configuration
  # Get your client&#39;s configuration. Must pass your global (i.e. client) access_token.
  # @param [Hash] opts the optional parameters
  # @return [ClientConfiguration]
  describe 'get_client_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
