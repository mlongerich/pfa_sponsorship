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

ActiveRecord::Schema.define(version: 20140303022959) do

  create_table "children", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "photo"
    t.boolean  "active",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "living",     default: false
    t.boolean  "schooling",  default: false
  end

  create_table "donors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.date     "month_year"
    t.integer  "sponsorship_id"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["sponsorship_id"], name: "index_payments_on_sponsorship_id"

  create_table "sponsorship_types", force: true do |t|
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kind"
  end

  create_table "sponsorships", force: true do |t|
    t.integer  "donor_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sponsorship_type_id"
    t.boolean  "active",              default: false
  end

  add_index "sponsorships", ["child_id"], name: "index_sponsorships_on_child_id"
  add_index "sponsorships", ["donor_id"], name: "index_sponsorships_on_donor_id"
  add_index "sponsorships", ["sponsorship_type_id"], name: "index_sponsorships_on_sponsorship_type_id"

end
