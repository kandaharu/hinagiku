require 'spec_helper'

describe TasksController do

  describe "GET 'restart'" do
    it "returns http success" do
      get 'restart'
      response.should be_success
    end
  end

end
