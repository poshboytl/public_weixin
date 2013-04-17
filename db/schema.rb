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

ActiveRecord::Schema.define(:version => 20130417162951) do

  create_table "bizinfo", :primary_key => "bizid", :force => true do |t|
    t.string "title",                                   :null => false
    t.text   "desc",                                    :null => false
    t.string "account", :limit => 128,                  :null => false
    t.string "owner",   :limit => 50,                   :null => false
    t.float  "boost",                  :default => 1.0, :null => false
  end

  create_table "bizstatus", :primary_key => "bizid", :force => true do |t|
    t.integer   "last_success_msgid", :limit => 8, :default => 10000000, :null => false
    t.timestamp "updated_at",                                            :null => false
  end

  create_table "message", :force => true do |t|
    t.string    "bizid",          :limit => 32,                      :null => false
    t.integer   "msgid",          :limit => 8,                       :null => false
    t.string    "url",                                               :null => false
    t.string    "title",                                             :null => false
    t.text      "content",        :limit => 16777215,                :null => false
    t.timestamp "updated_at",                                        :null => false
    t.text      "images",                                            :null => false
    t.string    "source_url",                                        :null => false
    t.integer   "repeat_message", :limit => 1,        :default => 0, :null => false
    t.string    "message_hash",   :limit => 32,                      :null => false
  end

  add_index "message", ["bizid"], :name => "bizid"
  add_index "message", ["bizid"], :name => "bizid_2"
  add_index "message", ["message_hash"], :name => "message_hash"
  add_index "message", ["msgid"], :name => "msgid"

  create_table "votes", :force => true do |t|
    t.string   "bizid"
    t.integer  "msgid"
    t.integer  "count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
