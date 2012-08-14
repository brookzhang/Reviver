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

ActiveRecord::Schema.define(:version => 20120630084323) do

  create_table "functions", :force => true do |t|
    t.integer  "parent_id",   :default => 0,  :null => false
    t.string   "code",        :default => "", :null => false
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "functions", ["code"], :name => "index_functions_on_code", :unique => true

  create_table "model_parts", :force => true do |t|
    t.integer  "model_id",   :null => false
    t.integer  "part_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "models", :force => true do |t|
    t.integer  "product_id",  :default => 0,  :null => false
    t.integer  "series_id",   :default => 0,  :null => false
    t.string   "model",       :default => "", :null => false
    t.string   "name"
    t.string   "description"
    t.integer  "status"
    t.integer  "preid"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "models", ["model"], :name => "index_models_on_model", :unique => true

  create_table "part_order_items", :force => true do |t|
    t.integer  "part_order_id",           :null => false
    t.integer  "model_id",                :null => false
    t.integer  "part_id",                 :null => false
    t.integer  "confirmed_part_id"
    t.integer  "status"
    t.integer  "requested_qty"
    t.integer  "confirmed_qty"
    t.integer  "shipped_qty"
    t.integer  "received_qty"
    t.datetime "requested_date"
    t.datetime "confirmed_date"
    t.datetime "shiped_date"
    t.datetime "received_date"
    t.integer  "requester_id"
    t.integer  "confirmer_id"
    t.integer  "shipper_id"
    t.integer  "receiver_id"
    t.integer  "from_part_order_item_id"
    t.boolean  "is_in_vendor_warranty"
    t.integer  "from_rma_detail_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "part_orders", :force => true do |t|
    t.string   "number",           :null => false
    t.string   "reference_number"
    t.integer  "from_unit_id",     :null => false
    t.integer  "to_unit_id",       :null => false
    t.integer  "status"
    t.integer  "ship_address_id"
    t.integer  "bill_address_id"
    t.integer  "type"
    t.datetime "requested_date"
    t.datetime "confirmed_date"
    t.datetime "shiped_date"
    t.datetime "received_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "parts", :force => true do |t|
    t.string   "partnumber",     :default => "", :null => false
    t.string   "mapping_number"
    t.string   "name"
    t.integer  "status"
    t.integer  "preid"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "parts", ["partnumber"], :name => "index_parts_on_partnumber", :unique => true

  create_table "products", :force => true do |t|
    t.string   "code",        :default => "", :null => false
    t.string   "name"
    t.string   "description"
    t.integer  "status"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "role_functions", :force => true do |t|
    t.string   "role_code",     :default => "", :null => false
    t.string   "function_code", :default => "", :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "code",        :default => "", :null => false
    t.string   "name"
    t.string   "description"
    t.string   "current_url"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "roles", ["code"], :name => "index_roles_on_code", :unique => true

  create_table "series", :force => true do |t|
    t.integer  "product_id",  :default => 0, :null => false
    t.string   "name"
    t.string   "description"
    t.integer  "status"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "unit_roles", :force => true do |t|
    t.string   "unit_code",  :default => "", :null => false
    t.string   "role_code",  :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "unit_routings", :force => true do |t|
    t.string   "from_unit_code", :default => "", :null => false
    t.string   "to_unit_code",   :default => "", :null => false
    t.string   "routing_type",   :default => "", :null => false
    t.integer  "status"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "code",       :default => "", :null => false
    t.string   "name"
    t.string   "shortname"
    t.string   "region"
    t.integer  "status"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "units", ["code"], :name => "index_units_on_code", :unique => true

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id",      :default => 0, :null => false
    t.integer  "unit_role_id", :default => 0, :null => false
    t.integer  "status"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
