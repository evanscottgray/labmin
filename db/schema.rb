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

ActiveRecord::Schema.define(version: 20140918185228) do

  create_table "console_server_interfaces", force: true do |t|
    t.integer  "console_server_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number"
  end

  create_table "console_servers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "telnet_port_base"
    t.integer  "ssh_port_base"
    t.integer  "credential_id"
  end

  create_table "credentials", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "username"
    t.string   "password"
    t.string   "enable_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_console_interfaces", force: true do |t|
    t.string  "name"
    t.integer "console_server_interface_id"
    t.integer "device_id"
  end

  create_table "device_interfaces", force: true do |t|
    t.string   "name"
    t.integer  "mrv_interface_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "base_configuration"
    t.integer  "credential_id"
  end

  create_table "ipv4_addresses", force: true do |t|
    t.string   "address"
    t.integer  "ipv4_addressable_id"
    t.string   "ipv4_addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mrv_interfaces", force: true do |t|
    t.string   "name"
    t.integer  "mrv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mrv_mappings", force: true do |t|
    t.integer  "topology_id"
    t.integer  "a_side_id"
    t.integer  "z_side_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mrvs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credential_id"
  end

  create_table "reservations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "topology_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "saved_configurations", force: true do |t|
    t.text     "content"
    t.integer  "reservation_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topology_device_relations", force: true do |t|
    t.integer  "device_id"
    t.integer  "topology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "ldap_name"
    t.string   "ldap_phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
