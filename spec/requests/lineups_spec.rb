require 'rails_helper'

RSpec.describe "Lineups", type: :request do
  describe "GET /lineups" do
    it "works! (now write some real specs)" do
      get lineups_path
      expect(response).to have_http_status(200)
    end
  end
end
