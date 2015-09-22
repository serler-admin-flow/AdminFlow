class CreateLogBooks < ActiveRecord::Migration
  def change
    create_table :log_books do |t|
      t.string :LogBookID
      t.datetime :LoginTime
      t.datetime :LogoutTime
      t.integer :IPAddress

      t.timestamps null: false
    end
  end
end
