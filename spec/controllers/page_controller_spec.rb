require 'spec_helper'

describe PageController do

  describe "GET 'Main'" do
    it "returns http success" do
      get 'Main'
      response.should be_success
    end
  end

end
