class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
            t.primary_key :userID
            t.string :title
            t.string :author
            t.date :yearOfPub
            t.string :source 
            t.string :publisherName
            t.date :doi
            t.integer :volumeNo
            t.integer :pageNo
            t.string :websiteName
            t.string :websiteUrl
            t.datetime :lastAccessed
            t.string :evidenceId
            t.string :status_2
            t.string :statusId
            t.integer :rating
            b.string :comments
      t.timestamps null: false
    end
  end
end
