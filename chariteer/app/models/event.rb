class Event < ActiveRecord::Base
  belongs_to :organization
  belongs_to :user
  has_many :categories
end
