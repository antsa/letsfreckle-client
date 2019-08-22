require 'spec_helper'

describe LetsFreckle::User do
  context "#all" do
    it "should return all users" do
      LetsFreckle.configure do
        username "username"
        account_host "host"
        token "secret"
      end

      stub_api_request('users')
      users = LetsFreckle::User.all
      users.size.should == 2

      first_user = users.first
      first_user.email.should == 'apitest@nokotime.com'
    end
  end
end
