class CreateLogBooks < ActiveRecord::Migration
  def change
    create_table :log_books do |t|
      t.string :log_book_id
      t.datetime :login_time
      t.datetime :logout_time
      t.integer :ip_address

      t.timestamps null: false
    end
  end
end
