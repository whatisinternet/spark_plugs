require 'faker'

FactoryGirl.define do
  factory :spark_plugs_static_page, :class => 'SparkPlugs::StaticPage' do
    page Faker::Lorem.characters(25)
    title Faker::Commerce.product_name
    content Faker::Lorem.paragraph(30)
  end

end
