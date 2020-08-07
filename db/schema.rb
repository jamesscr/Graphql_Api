# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_07_220138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dim_customers", force: :cascade do |t|
    t.date "creation_date"
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_email"
    t.integer "nb_elevators"
    t.string "contact_city"
  end

  create_table "fact_contacts", force: :cascade do |t|
    t.integer "contact_id"
    t.date "creation_date"
    t.string "company_name"
    t.string "email"
    t.string "project_name"
  end

  create_table "fact_elevators", force: :cascade do |t|
    t.integer "building_id"
    t.integer "customer_id"
    t.bigint "serial_number"
    t.date "commissioning_date"
    t.string "building_city"
  end

  create_table "fact_intervention", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "building_id", null: false
    t.integer "battery_id"
    t.integer "column_id"
    t.integer "elevator_id"
    t.datetime "start_of_intervention", null: false
    t.datetime "end_of_intervention"
    t.string "result", null: false
    t.string "report"
    t.string "status"
  end

  create_table "fact_quotes", force: :cascade do |t|
    t.integer "quote_id"
    t.datetime "creation_date"
    t.string "company_name"
    t.string "email"
    t.integer "nb_elevator"
  end

  create_table "links", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
