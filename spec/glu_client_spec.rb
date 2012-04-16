require 'glu_client'

describe GluClient::Api do
  it "parses the fabric from the yaml file" do
    GluClient::Api.new(:fabric => 'fabric_name').fabric.should == 'fabric_name'
  end
end