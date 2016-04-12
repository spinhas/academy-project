class Log < ActiveRecord::Base
  belongs_to :activity_type, :validate => true
  belongs_to :admin_user, :validate => true

  validates :user_id, presence: true
  validates :activity_type_id, presence: true
  validates :app_key, presence: true
end