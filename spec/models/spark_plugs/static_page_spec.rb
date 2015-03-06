require 'rails_helper'

module SparkPlugs
  RSpec.describe StaticPage, type: :model do
    describe 'validations' do
      context 'page' do
        it { should validate_presence_of(:page) }
        it { should validate_length_of(:page).is_at_least(3) }
        it do
          FactoryGirl.create(:spark_plugs_static_page)
          should validate_uniqueness_of(:page)
        end
      end
      context 'title' do
        it { should validate_presence_of(:title) }
        it { should validate_length_of(:title).is_at_least(5) }
      end
      context 'content' do
        it { should validate_presence_of(:content) }
        it { should validate_length_of(:content).is_at_least(5) }
      end
    end
  end
end
