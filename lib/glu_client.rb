require "glu_client/version"

module GluClient
  class Api
    attr_accessor :fabric
    def initialize(options)
      @fabric = options[:fabric]
    end
  end
end
