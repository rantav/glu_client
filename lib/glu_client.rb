require "glu_client/version"
require 'rest_client'
require 'json'

module GluClient
  class Api
    attr_accessor :fabric
    attr_accessor :rest_uri

    #
    # options:
    # fabric: fabric name
    # rest_uri: for example 'http://user:pass@glu.com:8080/console/rest/v1/'
    #
    def initialize(options)
      @fabric = options[:fabric]
      @rest_uri = options[:rest_uri]
      @api_uri = "#{@rest_uri}#{@fabric}"
    end

    def get_model_live
      get_json "/model/live"
    end

    def get_json(resource)
      response = RestClient.get @api_uri + resource
      json = JSON.parse(response)
    end
  end
end
