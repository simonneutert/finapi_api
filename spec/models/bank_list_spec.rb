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

# Unit tests for FinapiApiClient::BankList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BankList' do
  before do
    # run before each test
    @instance = FinapiApiClient::BankList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BankList' do
    it 'should create an instance of BankList' do
      expect(@instance).to be_instance_of(FinapiApiClient::BankList)
    end
  end
  describe 'test attribute "banks"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
