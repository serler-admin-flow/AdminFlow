class CreateEmailConfigs < ActiveRecord::Migration
  def change
    create_table :email_configs do |t|
      t.string :email_id
      t.string :moderator_thresh
      t.string :analyst_thresh
      t.datetime :last_update

      t.timestamps null: false
    end
  end
end
