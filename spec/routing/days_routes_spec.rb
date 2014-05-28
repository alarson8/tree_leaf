require 'spec_helper'

describe DaysController do

  describe "GET /sessions/:year/:monthy/:day" do
    it "routes to days#show" do
      expect(get: "/sessions/2014/05/01").to route_to(controller: "days", action: "show", year: "2014", month: "05", day: "01")
    end
  end

end
