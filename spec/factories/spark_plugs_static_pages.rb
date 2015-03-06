# == Schema Information
#
# Table name: spark_plugs_static_pages
#
#  id         :integer          not null, primary key
#  page       :string           not null
#  title      :string           not null
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'faker'

FactoryGirl.define do
  factory :spark_plugs_static_page, :class => 'SparkPlugs::StaticPage' do
    sequence(:page){|n| "#{n}#{Faker::Lorem.characters(25)}"}
    title Faker::Lorem.characters(30)
    content Faker::Lorem.paragraph(30)
  end

end
