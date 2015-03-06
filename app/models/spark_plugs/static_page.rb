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

module SparkPlugs
  class StaticPage < ActiveRecord::Base
    validates :page,  uniqueness: true
    validates :page,  presence: true
    validates :page,  length: { minimum: 3 }
    validates :title, presence: true
    validates :title, length: { minimum: 5  }
    validates :content, presence: true
    validates :content, length: { minimum: 5  }
  end
end
