class ActivityType < ActiveRecord::Base
  has_many :logs

  validates :name, presence: true
  validates_uniqueness_of :name
end