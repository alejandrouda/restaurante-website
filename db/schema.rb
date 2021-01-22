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

ActiveRecord::Schema.define(version: 2021_01_20_101956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "allergen_tags", force: :cascade do |t|
    t.bigint "allergen_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allergen_id"], name: "index_allergen_tags_on_allergen_id"
    t.index ["meal_id"], name: "index_allergen_tags_on_meal_id"
  end

  create_table "allergens", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurante_id", null: false
    t.index ["restaurante_id"], name: "index_dashboards_on_restaurante_id"
  end

  create_table "drink_categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "position"
    t.string "category_title"
  end

  create_table "drink_category_tags", force: :cascade do |t|
    t.bigint "drink_id", null: false
    t.bigint "drink_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_category_id"], name: "index_drink_category_tags_on_drink_category_id"
    t.index ["drink_id"], name: "index_drink_category_tags_on_drink_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.boolean "set_menu_drink", default: false
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_drinks_on_menu_id"
  end

  create_table "filter_tags", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "filter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["filter_id"], name: "index_filter_tags_on_filter_id"
    t.index ["meal_id"], name: "index_filter_tags_on_meal_id"
  end

  create_table "filters", force: :cascade do |t|
    t.string "name"
    t.string "filter_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredient_tags", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_ingredient_tags_on_ingredient_id"
    t.index ["meal_id"], name: "index_ingredient_tags_on_meal_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "position"
    t.string "category_title"
  end

  create_table "meal_category_tags", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "meal_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_category_id"], name: "index_meal_category_tags_on_meal_category_id"
    t.index ["meal_id"], name: "index_meal_category_tags_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.boolean "set_menu_meal", default: false
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active", default: true
    t.index ["menu_id"], name: "index_meals_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "menu_type"
    t.integer "position"
    t.index ["restaurante_id"], name: "index_menus_on_restaurante_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "drink_id", null: false
    t.bigint "set_menu_id", null: false
    t.bigint "table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "orders_id", null: false
    t.index ["drink_id"], name: "index_order_products_on_drink_id"
    t.index ["meal_id"], name: "index_order_products_on_meal_id"
    t.index ["orders_id"], name: "index_order_products_on_orders_id"
    t.index ["set_menu_id"], name: "index_order_products_on_set_menu_id"
    t.index ["table_id"], name: "index_order_products_on_table_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_restaurantes_on_user_id"
  end

  create_table "set_menus", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.boolean "active", default: true
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurante_id"], name: "index_set_menus_on_restaurante_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "table_number"
    t.string "section"
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code"
    t.boolean "active", default: false
    t.index ["restaurante_id"], name: "index_tables_on_restaurante_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "allergen_tags", "allergens"
  add_foreign_key "allergen_tags", "meals"
  add_foreign_key "dashboards", "restaurantes"
  add_foreign_key "drink_category_tags", "drink_categories"
  add_foreign_key "drink_category_tags", "drinks"
  add_foreign_key "drinks", "menus"
  add_foreign_key "filter_tags", "filters"
  add_foreign_key "filter_tags", "meals"
  add_foreign_key "ingredient_tags", "ingredients"
  add_foreign_key "ingredient_tags", "meals"
  add_foreign_key "meal_category_tags", "meal_categories"
  add_foreign_key "meal_category_tags", "meals"
  add_foreign_key "meals", "menus"
  add_foreign_key "menus", "restaurantes"
  add_foreign_key "order_products", "drinks"
  add_foreign_key "order_products", "meals"
  add_foreign_key "order_products", "orders", column: "orders_id"
  add_foreign_key "order_products", "set_menus"
  add_foreign_key "order_products", "tables"
  add_foreign_key "restaurantes", "users"
  add_foreign_key "set_menus", "restaurantes"
  add_foreign_key "tables", "restaurantes"
end
