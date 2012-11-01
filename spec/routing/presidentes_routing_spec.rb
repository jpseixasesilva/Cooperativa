require "spec_helper"

describe PresidentesController do
  describe "routing" do

    it "routes to #index" do
      get("/presidentes").should route_to("presidentes#index")
    end

    it "routes to #new" do
      get("/presidentes/new").should route_to("presidentes#new")
    end

    it "routes to #show" do
      get("/presidentes/1").should route_to("presidentes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/presidentes/1/edit").should route_to("presidentes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/presidentes").should route_to("presidentes#create")
    end

    it "routes to #update" do
      put("/presidentes/1").should route_to("presidentes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/presidentes/1").should route_to("presidentes#destroy", :id => "1")
    end

  end
end
