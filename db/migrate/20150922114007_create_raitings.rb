class CreateRaitings < ActiveRecord::Migration
  def change
    create_table :raitings do |t|
      t.string :Rating

      t.timestamps null: false
    end
  end
end
