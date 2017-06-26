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

ActiveRecord::Schema.define(version: 20170626123400) do

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["post4_id"], name: "index_likes_on_post4_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "post2s", force: :cascade do |t|
    t.string   "title"
    t.string   "place"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "post2s", ["user_id"], name: "index_post2s_on_user_id"

  create_table "post3s", force: :cascade do |t|
    t.string   "title1"
    t.string   "place1"
    t.string   "image1"
    t.text     "memo1"
    t.string   "title2"
    t.string   "place2"
    t.string   "image2"
    t.text     "memo2"
    t.string   "title3"
    t.string   "place3"
    t.string   "image3"
    t.text     "memo3"
    t.string   "title4"
    t.string   "place4"
    t.string   "image4"
    t.text     "memo4"
    t.string   "title5"
    t.string   "place5"
    t.string   "image5"
    t.text     "memo5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "post3s", ["user_id"], name: "index_post3s_on_user_id"

  create_table "post4s", force: :cascade do |t|
    t.string   "title1"
    t.string   "place1"
    t.string   "image1"
    t.text     "memo1"
    t.string   "title2"
    t.string   "place2"
    t.string   "image2"
    t.text     "memo2"
    t.string   "title3"
    t.string   "place3"
    t.string   "image3"
    t.text     "memo3"
    t.string   "title4"
    t.string   "place4"
    t.string   "image4"
    t.text     "memo4"
    t.string   "title5"
    t.string   "place5"
    t.string   "image5"
    t.text     "memo5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "likes_count"
  end

  add_index "post4s", ["user_id"], name: "index_post4s_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "place"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.integer  "post4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "replies", ["post4_id"], name: "index_replies_on_post4_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
