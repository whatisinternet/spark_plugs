require "rails_helper"

module SparkPlugs
  RSpec.describe StaticPagesController, type: :routing do
    before :each do
      @page = FactoryGirl.create(:spark_plugs_static_page)
    end

    describe "routing" do

      routes { SparkPlugs::Engine.routes }

      it "routes to #new" do
        expect(:get => "/static_pages/new").to route_to("spark_plugs/static_pages#new")
      end

      it "routes to #show" do
        expect(:get => "/#{@page.page}").to route_to("spark_plugs/static_pages#show", :page => "#{@page.page}")
      end

      it "routes to #edit" do
        expect(:get => "/static_pages/1/edit").to route_to("spark_plugs/static_pages#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/static_pages").to route_to("spark_plugs/static_pages#create")
      end

      it "routes to #update" do
        expect(:put => "/static_pages/1").to route_to("spark_plugs/static_pages#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/static_pages/1").to route_to("spark_plugs/static_pages#destroy", :id => "1")
      end

    end
  end
end
