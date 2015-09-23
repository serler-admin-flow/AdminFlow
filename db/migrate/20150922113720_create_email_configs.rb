class CreateEmailConfigs < ActiveRecord::Migration
  def change
    create_table :email_configs do |t|
      t.string :EmailID
      t.string :ModeratorThresh
      t.string :AnalystThresh
      t.datetime :LastUpdate

      t.timestamps null: false
    end
  end
end
