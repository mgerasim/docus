require 'spec_helper'

describe AuthController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "returns http success" do
      get 'logout'
      response.should be_success
    end
  end

  describe "GET 'add_user'" do
    it "returns http success" do
      get 'add_user'
      response.should be_success
    end
  end

end
