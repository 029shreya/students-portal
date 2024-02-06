require 'rails_helper'

RSpec.describe "Departments", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/department/index"
      expect(response).to have_http_status(:success)
    end
  end

end
