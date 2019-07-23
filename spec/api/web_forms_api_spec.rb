=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for FinapiApiClient::WebFormsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebFormsApi' do
  before do
    # run before each test
    @instance = FinapiApiClient::WebFormsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebFormsApi' do
    it 'should create an instance of WebFormsApi' do
      expect(@instance).to be_instance_of(FinapiApiClient::WebFormsApi)
    end
  end

  # unit tests for get_web_form
  # Get a web form
  # Get a web form of the user that is authorized by the access_token. Must pass the web form&#39;s identifier and the user&#39;s access_token. &lt;br/&gt;&lt;br/&gt;Note that every web form resource is automatically removed from the finAPI system after 24 hours after its creation.
  # @param id Identifier of web form
  # @param [Hash] opts the optional parameters
  # @return [WebForm]
  describe 'get_web_form test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
