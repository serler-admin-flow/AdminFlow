# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150922114007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biblios", force: :cascade do |t|
    t.string   "BiblioID"
    t.string   "Title"
    t.string   "Author"
    t.date     "YearOfPub"
    t.string   "Source"
    t.string   "PublisherName"
    t.date     "DOI"
    t.integer  "VolumeNo"
    t.string   "PageNo"
    t.string   "WebsiteName"
    t.string   "URL"
    t.datetime "LastAccessedDate"
    t.string   "EvidenceID"
    t.string   "Status_2"
    t.string   "StatusID"
    t.datetime "TimeStamp"
    t.integer  "Rating"
    t.string   "Comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "descriptions", force: :cascade do |t|
    t.string   "Status"
    t.string   "ModeratedBy"
    t.string   "ModeratedTime"
    t.string   "AnalyzedBy"
    t.datetime "ModeratedTime_2"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "email_configs", force: :cascade do |t|
    t.string   "EmailID"
    t.string   "ModeratorThresh"
    t.string   "AnalystThresh"
    t.datetime "LastUpdate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "evidences", force: :cascade do |t|
    t.string   "EvidenceID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_books", force: :cascade do |t|
    t.string   "LogBookID"
    t.datetime "LoginTime"
    t.datetime "LogoutTime"
    t.integer  "IPAddress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moderator_cls", force: :cascade do |t|
    t.string   "CheckListID"
    t.string   "FieldName"
    t.string   "Value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "raitings", force: :cascade do |t|
    t.string   "Rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "UserID"
    t.string   "UserName"
    t.string   "UserEmailID"
    t.string   "UserPassword"
    t.string   "Salt"
    t.string   "UserRole"
    t.string   "UserOrganisation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
