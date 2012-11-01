require "spec_helper"

describe RegleitesController do
  describe "routing" do

    it "routes to #index" do
      get("/regleites").should route_to("regleites#index")
    end

    it "routes to #new" do
      get("/regleites/new").should route_to("regleites#new")
    end

    it "routes to #show" do
      get("/regleites/1").should route_to("regleites#show", :id => "1")
    end

    it "routes to #edit" do
      get("/regleites/1/edit").should route_to("regleites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/regleites").should route_to("regleites#create")
    end

    it "routes to #update" do
      put("/regleites/1").should route_to("regleites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/regleites/1").should route_to("regleites#destroy", :id => "1")
    end

  end
end
