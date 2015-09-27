class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :status
      t.string :moderated_by
      t.string :moderated_time
      t.string :analyzed_by
      t.datetime :moderated_time_2

      t.timestamps null: false
    end
  end
end
