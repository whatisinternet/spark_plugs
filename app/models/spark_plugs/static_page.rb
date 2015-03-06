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
