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

ActiveRecord::Schema.define(:version => 20121217211527) do

  create_table "abroads", :force => true do |t|
    t.integer  "employee_id"
    t.string   "country"
    t.string   "date_to"
    t.string   "purpose"
    t.string   "awareness_conclusion"
    t.string   "making_on_out"
    t.string   "solution_output"
    t.text     "additional_data"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "abroads", ["employee_id"], :name => "index_abroads_on_employee_id"

  create_table "documents", :force => true do |t|
    t.date     "docdate"
    t.string   "docnumber"
    t.string   "source"
    t.string   "name"
    t.text     "summary"
    t.string   "subject"
    t.string   "security_classification"
    t.string   "mark"
    t.date     "registration_date"
    t.string   "registration_number"
    t.string   "location_document"
    t.string   "file_number"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "secondname"
    t.string   "initials"
    t.integer  "handbook_place_employee_id"
    t.integer  "handbook_structual_unit_id"
    t.integer  "handbook_division_id"
    t.integer  "handbook_jobposition_id"
    t.string   "appointment_date"
    t.string   "admission"
    t.string   "previous_job_awareness"
    t.string   "admission_approval"
    t.string   "admission_order"
    t.string   "temporary_restriction_of_exit_from_russia_contact_date"
    t.string   "dismissal_order"
    t.string   "admission_act_of_termination"
    t.string   "admission_message_of_termination"
    t.string   "foreign_passport"
    t.string   "passport_number"
    t.string   "passport_issuing_authority"
    t.string   "having_relatives_abroad"
    t.string   "who_abroad"
    t.text     "additional_information"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

  add_index "employees", ["handbook_division_id"], :name => "index_employees_on_handbook_division_id"
  add_index "employees", ["handbook_jobposition_id"], :name => "index_employees_on_handbook_jobposition_id"
  add_index "employees", ["handbook_place_employee_id"], :name => "index_employees_on_handbook_place_employee_id"
  add_index "employees", ["handbook_structual_unit_id"], :name => "index_employees_on_handbook_structual_unit_id"

  create_table "handbook_abroad_traveling_reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_divisions", :force => true do |t|
    t.string   "fullname"
    t.string   "shortname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_document_marks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_form_admissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_jobpositions", :force => true do |t|
    t.string   "fullname"
    t.string   "shortname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_place_employees", :force => true do |t|
    t.string   "fullname"
    t.string   "shortname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "handbook_structual_units", :force => true do |t|
    t.string   "fullname"
    t.string   "shortname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "role"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
