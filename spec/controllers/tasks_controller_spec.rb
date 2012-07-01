require 'spec_helper'

describe TasksController do

  describe "GET 'finish'" do
    it "returns http success" do
      get 'finish'
      response.should be_success
    end
  end

end
