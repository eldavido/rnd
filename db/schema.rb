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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120610063839) do

  create_table "features", :force => true do |t|
    t.string   "title"
    t.datetime "content_date"
    t.text     "overview"
    t.text     "body"
    t.string   "type"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "feature_keywords"
    t.string   "slug"
    t.string   "leader_picture_file_name"
    t.string   "leader_picture_content_type"
    t.integer  "leader_picture_file_size"
    t.datetime "leader_picture_updated_at"
    t.string   "podcast_file_name"
    t.string   "podcast_content_type"
    t.integer  "podcast_file_size"
    t.datetime "podcast_updated_at"
    t.boolean  "published",                   :default => false
  end

  add_index "features", ["slug"], :name => "index_features_on_slug"

  create_table "users", :force => true do |t|
    t.string  "openid_claimed_identifier"
    t.string  "given_name"
    t.string  "family_name"
    t.string  "email_address"
    t.boolean "editor",                    :default => false
  end

end
