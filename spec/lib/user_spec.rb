require "spec_helper"
require "user"

#User test for login
describe User do
    it "User has logged in" do
    user = User.new
    user.login.should == true
    end
end   
#User test for logout
describe User do
    it "User has logged out" do
    user = User.new
    user.logout.should == true
    end    
end
#User test for register
describe User do
    it "User has registered" do
    user = User.new
    user.register.should == true
    end    
end
