class CreateTableLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :activity_type_id, null: false
      t.integer :admin_user_id, null: false
      t.string :app_key, null: false
      t.timestamps
    end
  end
end
