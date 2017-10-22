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

ActiveRecord::Schema.define(version: 20171022115906) do

  create_table "methodologies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "methodology_evaluations", force: :cascade do |t|
    t.integer "methodology_id"
    t.text "reason"
    t.integer "utility"
    t.integer "pertinence"
    t.integer "relevance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_connection_id"
    t.text "methodology_chosen"
    t.string "comentary"
    t.index ["methodology_id"], name: "index_methodology_evaluations_on_methodology_id"
    t.index ["project_connection_id"], name: "index_methodology_evaluations_on_project_connection_id"
  end

  create_table "methodology_reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "description"
    t.integer "user_id"
    t.integer "methodology_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["methodology_id"], name: "index_methodology_reviews_on_methodology_id"
    t.index ["user_id"], name: "index_methodology_reviews_on_user_id"
  end

  create_table "project_choices", force: :cascade do |t|
    t.string "desicion"
    t.string "p1"
    t.string "p2"
    t.string "p3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_id"
    t.index ["project_id"], name: "index_project_choices_on_project_id"
  end

  create_table "project_communications", force: :cascade do |t|
    t.string "questions"
    t.string "answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_connections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "needs"
    t.text "ideas"
    t.integer "project_id"
    t.index ["project_id"], name: "index_project_connections_on_project_id"
  end

  create_table "project_diffusions", force: :cascade do |t|
    t.string "moment"
    t.text "audience"
    t.text "channel"
    t.text "object"
    t.integer "project_planification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_planification_id"], name: "index_project_diffusions_on_project_planification_id"
  end

  create_table "project_evaluations", force: :cascade do |t|
    t.string "questions"
    t.string "answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_implementations", force: :cascade do |t|
    t.string "questions"
    t.string "answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_planifications", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.datetime "startdate"
    t.datetime "finishdate"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_planifications_on_project_id"
  end

  create_table "project_resources", force: :cascade do |t|
    t.string "name"
    t.boolean "disponibility"
    t.text "comment"
    t.integer "place"
    t.integer "project_planification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_planification_id"], name: "index_project_resources_on_project_planification_id"
  end

  create_table "project_reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "description"
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_reviews_on_project_id"
    t.index ["user_id"], name: "index_project_reviews_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "last_name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
