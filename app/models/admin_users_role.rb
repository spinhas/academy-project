class AdminUsersRole < ActiveRecord::Base
  belongs_to :role, :validate => true
  belongs_to :admin_user, :validate => true

  validates :admin_user_id, presence: true
  validates :role_id, presence: true

  validates_uniqueness_of :admin_user_id, :scope => :role_id
end