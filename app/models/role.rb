class Role < ActiveRecord::Base
  has_many :admin_users_roles
  has_many :admin_users, :through => :admin_users_roles

  validates :name, presence: true, uniqueness: true
end