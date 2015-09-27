class CreateModeratorCls < ActiveRecord::Migration
  def change
    create_table :moderator_cls do |t|
      t.string :checklist_id
      t.string :field_name
      t.string :value

      t.timestamps null: false
    end
  end
end
