class CreateModeratorCls < ActiveRecord::Migration
  def change
    create_table :moderator_cls do |t|
      t.string :CheckListID
      t.string :FieldName
      t.string :Value

      t.timestamps null: false
    end
  end
end
