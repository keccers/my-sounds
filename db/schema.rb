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

ActiveRecord::Schema.define(version: 20131004053508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sounds", force: true do |t|
    t.text    "username"
    t.text    "avatar"
    t.text    "full_name"
    t.text    "city"
    t.text    "description"
    t.integer "favorites"
  end

  create_table "tracks", force: true do |t|
    t.integer "sound_id"
    t.text    "title"
    t.text    "artist"
    t.text    "url"
    t.text    "artwork"
    t.text    "stream_url"
    t.integer "soundcloud_id"
    t.text    "widget"
  end

end
