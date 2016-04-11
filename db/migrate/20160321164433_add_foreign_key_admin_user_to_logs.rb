class AddForeignKeyAdminUserToLogs < ActiveRecord::Migration
  def change
    add_foreign_key(:logs, :admin_users)
  end
end
