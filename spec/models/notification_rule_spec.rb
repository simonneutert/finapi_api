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

# Unit tests for FinapiApi::NotificationRule
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotificationRule' do
  before do
    # run before each test
    @instance = FinapiApi::NotificationRule.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotificationRule' do
    it 'should create an instance of NotificationRule' do
      expect(@instance).to be_instance_of(FinapiApi::NotificationRule)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trigger_event"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NEW_ACCOUNT_BALANCE", "NEW_TRANSACTIONS", "BANK_LOGIN_ERROR", "FOREIGN_MONEY_TRANSFER", "LOW_ACCOUNT_BALANCE", "HIGH_TRANSACTION_AMOUNT", "CATEGORY_CASH_FLOW", "NEW_TERMS_AND_CONDITIONS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.trigger_event = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "params"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "callback_handle"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "include_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
