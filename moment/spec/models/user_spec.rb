require 'spec_helper'

describe User do
  it "can have a first name" do
    user = User.new
    user.f_name = "Travis"
    user.f_name.should == "Travis"
  end
end
