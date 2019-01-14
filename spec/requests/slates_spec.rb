require 'rails_helper'

RSpec.describe "Slates", type: :request do
  describe "GET /slates" do
    it "works! (now write some real specs)" do
      get slates_path
      expect(response).to have_http_status(200)
    end
  end
end
