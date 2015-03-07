require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
module SparkPlugs
  RSpec.describe StaticPagesHelper, type: :helper do
    before :each do
      @page = FactoryGirl.create(:spark_plugs_static_page)
    end
    describe "set_title" do
      it "sets the @title variable for compatibility" do
        assign(:static_page, @page)
        expect(helper.set_title).to eq(@page.title)
      end
    end
  end
end
