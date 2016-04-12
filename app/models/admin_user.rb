class AdminUser < ActiveRecord::Base
  has_many :admin_users_roles
  has_many :roles, :through => :admin_users_roles

  has_many :logs

  validates :name, presence: true
  validates :password, presence: true
end