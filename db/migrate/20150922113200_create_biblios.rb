class CreateBiblios < ActiveRecord::Migration
  def change
    create_table :biblios do |t|
      t.string :BiblioID
      t.string :Title
      t.string :Author
      t.date :YearOfPub
      t.string :Source
      t.string :PublisherName
      t.date :DOI
      t.integer :VolumeNo
      t.integer :PageNo
      t.string :WebsiteName
      t.string :URL
      t.datetime :LastAccessedDate
      t.string :EvidenceID
      t.string :Status_2
      t.string :StatusID
      t.datetime :TimeStamp
      t.integer :Rating
      t.string :Comments

      t.timestamps null: false
    end
  end
end
