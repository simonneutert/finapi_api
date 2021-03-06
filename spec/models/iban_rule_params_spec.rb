=begin
#finAPI RESTful Services (alpha build)

#finAPI RESTful Services (alpha build)

OpenAPI spec version: finAPI PSD2-alpha (based on v.1.73.0)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FinapiApi::IbanRuleParams
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IbanRuleParams' do
  before do
    # run before each test
    @instance = FinapiApi::IbanRuleParams.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IbanRuleParams' do
    it 'should create an instance of IbanRuleParams' do
      expect(@instance).to be_instance_of(FinapiApi::IbanRuleParams)
    end
  end
  describe 'test attribute "category_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "direction"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Income", "Spending", "Both"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.direction = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "iban"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
