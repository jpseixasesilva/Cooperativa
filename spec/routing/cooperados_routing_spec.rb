require "spec_helper"

describe CooperadosController do
  describe "routing" do

    it "routes to #index" do
      get("/cooperados").should route_to("cooperados#index")
    end

    it "routes to #new" do
      get("/cooperados/new").should route_to("cooperados#new")
    end

    it "routes to #show" do
      get("/cooperados/1").should route_to("cooperados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cooperados/1/edit").should route_to("cooperados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cooperados").should route_to("cooperados#create")
    end

    it "routes to #update" do
      put("/cooperados/1").should route_to("cooperados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cooperados/1").should route_to("cooperados#destroy", :id => "1")
    end

  end
end
