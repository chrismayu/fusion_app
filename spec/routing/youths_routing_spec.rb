require "spec_helper"

describe YouthsController do
  describe "routing" do

    it "routes to #index" do
      get("/youths").should route_to("youths#index")
    end

    it "routes to #new" do
      get("/youths/new").should route_to("youths#new")
    end

    it "routes to #show" do
      get("/youths/1").should route_to("youths#show", :id => "1")
    end

    it "routes to #edit" do
      get("/youths/1/edit").should route_to("youths#edit", :id => "1")
    end

    it "routes to #create" do
      post("/youths").should route_to("youths#create")
    end

    it "routes to #update" do
      put("/youths/1").should route_to("youths#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/youths/1").should route_to("youths#destroy", :id => "1")
    end

  end
end
