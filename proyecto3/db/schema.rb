# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_11_27_225621) do

  create_table "codes", force: :cascade do |t|
    t.string "code"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_codes_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "nit"
    t.string "razon_social"
    t.string "rut"
    t.integer "users_count"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dispatches", force: :cascade do |t|
    t.time "horario"
    t.boolean "switch"
    t.string "origen"
    t.string "destino"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "numero_factura"
    t.string "mes_factura"
    t.string "factura"
    t.string "certificacion"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_invoices_on_company_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "fecha"
    t.integer "consecutivo"
    t.string "avatar"
    t.string "destino"
    t.string "origen"
    t.string "estado"
    t.string "codigo_envio"
    t.decimal "valor"
    t.integer "dispatch_id", null: false
    t.integer "company_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_orders_on_company_id"
    t.index ["dispatch_id"], name: "index_orders_on_dispatch_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "packs", force: :cascade do |t|
    t.integer "order_id", null: false
    t.string "tipo"
    t.string "cantidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_packs_on_order_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "subject"
    t.string "email"
    t.string "code"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responses", force: :cascade do |t|
    t.text "content"
    t.integer "request_id", null: false
    t.string "rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_id"], name: "index_responses_on_request_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "company_id", null: false
    t.string "nombre"
    t.string "apellido"
    t.boolean "admin"
    t.string "avatar"
    t.string "token"
    t.boolean "first_login"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_users_on_company_id"
  end

  add_foreign_key "codes", "users"
  add_foreign_key "invoices", "companies"
  add_foreign_key "orders", "companies"
  add_foreign_key "orders", "dispatches"
  add_foreign_key "orders", "users"
  add_foreign_key "packs", "orders"
  add_foreign_key "responses", "requests"
  add_foreign_key "users", "companies"
end
