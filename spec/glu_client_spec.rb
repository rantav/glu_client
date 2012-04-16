require 'glu_client'

describe GluClient::Api do
  describe "initialize" do
    it "accepts the fabric" do
      GluClient::Api.new(:fabric => 'fabric_name').fabric.should == 'fabric_name'
    end
    it "accepts the rest_uri" do
      GluClient::Api.new(:rest_uri => 'https://glu.com:8080').rest_uri.should == 'https://glu.com:8080'
    end
  end
end