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

ActiveRecord::Schema.define(version: 2018_10_10_104529) do

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.integer "workforce_size", default: 0, null: false
    t.integer "work_hours", default: 0, null: false
    t.integer "strength", default: 0, null: false
    t.integer "industry_id"
    t.integer "state_id"
    t.integer "recruiter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_companies_on_industry_id"
    t.index ["recruiter_id"], name: "index_companies_on_recruiter_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobseekers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "degree", null: false
    t.string "university", null: false
    t.decimal "cgpa", precision: 4, scale: 2, null: false
    t.string "location", null: false
    t.string "pref_size", null: false
    t.string "pref_hours", null: false
    t.string "we1", null: false
    t.string "we2", null: false
    t.string "we3", null: false
    t.integer "knowledge_score", null: false
    t.integer "skill_score", null: false
    t.integer "activity_score", null: false
    t.string "knowledge1", null: false
    t.string "knowledge2", null: false
    t.string "knowledge3", null: false
    t.string "skill1", null: false
    t.string "skill2", null: false
    t.string "skill3", null: false
    t.string "activity1", null: false
    t.string "activity2", null: false
    t.string "activity3", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "company_temp", null: false
    t.integer "mobile", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "recruiter_id"
    t.integer "company_id"
    t.string "department", null: false
    t.integer "quantity", default: 0, null: false
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.string "question_4"
    t.string "question_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_vacancies_on_company_id"
    t.index ["recruiter_id"], name: "index_vacancies_on_recruiter_id"
  end

end
