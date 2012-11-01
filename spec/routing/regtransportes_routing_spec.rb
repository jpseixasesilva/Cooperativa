require "spec_helper"

describe RegtransportesController do
  describe "routing" do

    it "routes to #index" do
      get("/regtransportes").should route_to("regtransportes#index")
    end

    it "routes to #new" do
      get("/regtransportes/new").should route_to("regtransportes#new")
    end

    it "routes to #show" do
      get("/regtransportes/1").should route_to("regtransportes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/regtransportes/1/edit").should route_to("regtransportes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/regtransportes").should route_to("regtransportes#create")
    end

    it "routes to #update" do
      put("/regtransportes/1").should route_to("regtransportes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/regtransportes/1").should route_to("regtransportes#destroy", :id => "1")
    end

  end
end
