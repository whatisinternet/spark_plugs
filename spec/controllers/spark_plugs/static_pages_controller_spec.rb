require 'rails_helper'
require 'faker'


module SparkPlugs
  RSpec.describe StaticPagesController, type: :controller do
    routes { SparkPlugs::Engine.routes }

    before :all do
      Rails.cache.clear
      @static_page = FactoryGirl.create :spark_plugs_static_page
    end

    let (:valid_session) { {} }

    describe "GET #show" do
      it "assigns the requested static_page as @static_page" do
        get :show, {:id => @static_page.to_param, page: @static_page.page.to_param}, valid_session
        expect(assigns(:static_page)).to eq(@static_page)
      end
      it "raises an error on invalid data" do
        expect {
          get :show, {id: @static_page.to_param, page: 'invalidinvalid'}
        }.to raise_exception(ActionController::RoutingError)
      end
    end

  end
end
