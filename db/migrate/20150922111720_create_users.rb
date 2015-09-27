class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :UserID
      t.string :UserName
      t.string :UserEmailID
      t.string :UserPassword
      t.string :Salt
      t.string :UserRole
      t.string :UserOrganisation

      t.timestamps null: false
    end
  end
end
