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

ActiveRecord::Schema.define(version: 2022_03_20_115718) do

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "wrriten_flog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.string "movie_title"
    t.string "movie_poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nickname"
    t.string "image_id"
    t.boolean "is_active", default: true, null: false
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wrriten_flogs", force: :cascade do |t|
    t.integer "user_id"
    t.float "score"
    t.text "review"
    t.string "movie_title"
    t.integer "movie_id"
    t.string "movie_poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
