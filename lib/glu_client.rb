require "glu_client/version"

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
    end
  end
end
