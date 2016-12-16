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

ActiveRecord::Schema.define(version: 20161208001259) do

  create_table "attandances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "employ_ids",      limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.date     "attendence_date"
    t.integer  "user_id"
  end

  create_table "clippings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "employ_id"
    t.integer  "design_id"
    t.integer  "lots"
    t.string   "status"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_clippings_on_design_id", using: :btree
    t.index ["employ_id"], name: "index_clippings_on_employ_id", using: :btree
    t.index ["user_id"], name: "index_clippings_on_user_id", using: :btree
  end

  create_table "designs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "code"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
  end

  create_table "employs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "full_name"
    t.string   "father_name"
    t.date     "dob"
    t.boolean  "gender"
    t.string   "cnic"
    t.string   "address"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "material_status"
    t.string   "designation"
    t.integer  "basic_salary"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "phone_1"
    t.string   "phone_2"
    t.integer  "user_id"
  end

  create_table "expences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "amount"
    t.string   "detail"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_expences_on_user_id", using: :btree
  end

  create_table "machines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.date     "purchasing_date"
    t.integer  "price"
    t.string   "model"
    t.integer  "no_of_heads"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "order_lots", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number_of_lot"
    t.integer  "lot_rate"
    t.integer  "design_id"
    t.integer  "order_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["design_id"], name: "index_order_lots_on_design_id", using: :btree
    t.index ["order_id"], name: "index_order_lots_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "advance"
    t.integer  "balance"
    t.integer  "party_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "total"
    t.date     "order_received"
    t.date     "order_delivery_date"
    t.integer  "user_id"
    t.index ["party_id"], name: "index_orders_on_party_id", using: :btree
  end

  create_table "parties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "ph_no"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  create_table "party_members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone_1"
    t.string   "phone_2"
    t.string   "cnic"
    t.string   "address"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "party_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.index ["party_id"], name: "index_party_members_on_party_id", using: :btree
  end

  create_table "purchase_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "unit_price"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "purchasing_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["purchasing_id"], name: "index_purchase_items_on_purchasing_id", using: :btree
  end

  create_table "purchasings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "supplier_id"
    t.string   "total_bill"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["supplier_id"], name: "index_purchasings_on_supplier_id", using: :btree
  end

  create_table "salaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "employ_id"
    t.integer  "bounas"
    t.integer  "hotel"
    t.integer  "advance"
    t.integer  "salary_recevied"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["employ_id"], name: "index_salaries_on_employ_id", using: :btree
    t.index ["user_id"], name: "index_salaries_on_user_id", using: :btree
  end

  create_table "stitches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.integer  "count"
    t.integer  "machine_id"
    t.integer  "user_id"
    t.integer  "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_stitches_on_design_id", using: :btree
    t.index ["machine_id"], name: "index_stitches_on_machine_id", using: :btree
    t.index ["user_id"], name: "index_stitches_on_user_id", using: :btree
  end

  create_table "suppliers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone_1"
    t.string   "phone_2"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string   "full_name"
    t.date     "dob"
    t.boolean  "gender"
    t.string   "cnic"
    t.integer  "role"
    t.date     "joining"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "clippings", "designs"
  add_foreign_key "clippings", "employs"
  add_foreign_key "clippings", "users"
  add_foreign_key "expences", "users"
  add_foreign_key "order_lots", "designs"
  add_foreign_key "order_lots", "orders"
  add_foreign_key "orders", "parties"
  add_foreign_key "party_members", "parties"
  add_foreign_key "purchase_items", "purchasings"
  add_foreign_key "purchasings", "suppliers"
  add_foreign_key "salaries", "employs"
  add_foreign_key "salaries", "users"
  add_foreign_key "stitches", "designs"
  add_foreign_key "stitches", "machines"
  add_foreign_key "stitches", "users"
end
