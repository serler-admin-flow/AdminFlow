class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :evidence_id

      t.timestamps null: false
    end
  end
end
