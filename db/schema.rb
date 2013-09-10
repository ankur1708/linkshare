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

ActiveRecord::Schema.define(:version => 20130903123959) do

  create_table "assignments", :force => true do |t|
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tag_id"
  end

  add_index "assignments", ["tag_id", "post_id"], :name => "index_assignments_on_tag_id_and_post_id"

  create_table "downvote_posts", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "downvote_posts", ["user_id", "post_id"], :name => "index_downvote_posts_on_user_id_and_post_id", :unique => true

  create_table "posts", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.integer  "vote"
    t.text     "description"
  end

  create_table "seen_posts", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "seen_posts", ["user_id", "post_id"], :name => "index_seen_posts_on_user_id_and_post_id", :unique => true

  create_table "subscribers", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "upvote_posts", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "upvote_posts", ["user_id", "post_id"], :name => "index_upvote_posts_on_user_id_and_post_id", :unique => true

  create_table "users", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "email"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
  end

  create_table "watch_later_posts", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "watch_later_posts", ["user_id", "post_id"], :name => "index_watch_later_posts_on_user_id_and_post_id", :unique => true

end
