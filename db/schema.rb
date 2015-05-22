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

ActiveRecord::Schema.define(version: 20150521211645) do

  create_table "answers", force: :cascade do |t|
    t.string   "reply"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.string   "subject"
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "theme"
  end

  create_table "questions_subtopics", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "subtopic_id", null: false
  end

  add_index "questions_subtopics", ["question_id"], name: "index_questions_subtopics_on_question_id"
  add_index "questions_subtopics", ["subtopic_id"], name: "index_questions_subtopics_on_subtopic_id"

  create_table "subtopics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.integer  "theme_id"
  end

  add_index "subtopics", ["question_id"], name: "index_subtopics_on_question_id"
  add_index "subtopics", ["theme_id"], name: "index_subtopics_on_theme_id"

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "themes", ["question_id"], name: "index_themes_on_question_id"

end
