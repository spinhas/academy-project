class AddForeignKeyActivityTypeToLogs < ActiveRecord::Migration
  def change
    add_foreign_key(:logs, :activity_types)
  end
end
