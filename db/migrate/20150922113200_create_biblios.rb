class CreateBiblios < ActiveRecord::Migration
  def change
    create_table :biblios do |t|
      t.string :biblio_id
      t.string :title
      t.string :author
      t.date :year_of_pub
      t.string :source
      t.string :publisher_name
      t.date :doi
      t.integer :volume_no
      t.string :page_no
      t.string :website_name
      t.string :url
      t.datetime :last_accessed_date
      t.string :evidence_id
      t.string :status_2
      t.string :status_id
      t.datetime :time_stamp
      t.integer :rating
      t.string :comments

      t.timestamps null: false
    end
  end
end
