class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :Status
      t.string :ModeratedBy
      t.string :ModeratedTime
      t.string :AnalyzedBy
      t.datetime :ModeratedTime_2

      t.timestamps null: false
    end
  end
end
