require "rails_helper"

module SparkPlugs
  RSpec.describe StaticPagesController, type: :routing do
    before :each do
      @page = FactoryGirl.create(:spark_plugs_static_page)
    end

    describe "routing" do

      routes { SparkPlugs::Engine.routes }

      it "routes to #show" do
        expect(:get => "/#{@page.page}").to route_to("spark_plugs/static_pages#show", :page => "#{@page.page}")
      end

    end
  end
end
