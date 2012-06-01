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

ActiveRecord::Schema.define(:version => 20120503010551) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities_application_users", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "application_user_id"
  end

  create_table "activities_rols", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "rol_id"
  end

  create_table "addresses", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "application_users", :force => true do |t|
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "application_users", ["employee_id"], :name => "index_application_users_on_employee_id"

  create_table "application_users_rols", :id => false, :force => true do |t|
    t.integer "rol_id"
    t.integer "applicationUser_id"
  end

  create_table "application_users_user_groups", :id => false, :force => true do |t|
    t.integer "application_user_id"
    t.integer "user_group_id"
  end

  create_table "business_processes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "business_processes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_processes", ["business_processes_id"], :name => "index_business_processes_on_business_processes_id"

  create_table "carriers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consignment_orders", :force => true do |t|
    t.integer  "orderNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documented_materials", :force => true do |t|
    t.float    "qty"
    t.integer  "document_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documented_materials", ["document_id"], :name => "index_documented_materials_on_document_id"
  add_index "documented_materials", ["material_id"], :name => "index_documented_materials_on_material_id"

  create_table "documented_products", :force => true do |t|
    t.float    "qty"
    t.integer  "document_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documented_products", ["document_id"], :name => "index_documented_products_on_document_id"
  add_index "documented_products", ["product_id"], :name => "index_documented_products_on_product_id"

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees_employee_groups", :id => false, :force => true do |t|
    t.integer "employee_id"
    t.integer "employee_group_id"
  end

  create_table "fields_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields_groups_schema_fields", :id => false, :force => true do |t|
    t.integer "fields_group_id"
    t.integer "schema_field_id"
  end

  create_table "fields_groups_schemas", :id => false, :force => true do |t|
    t.integer "fields_group_id"
    t.integer "schema_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventories", ["company_id"], :name => "index_inventories_on_company_id"

  create_table "inventories_warehouses", :id => false, :force => true do |t|
    t.integer "inventory_id"
    t.integer "warehouse_id"
  end

  create_table "located_materials", :force => true do |t|
    t.float    "qty"
    t.integer  "location_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "located_materials", ["location_id"], :name => "index_located_materials_on_location_id"
  add_index "located_materials", ["material_id"], :name => "index_located_materials_on_material_id"

  create_table "located_products", :force => true do |t|
    t.float    "qty"
    t.integer  "location_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "located_products", ["location_id"], :name => "index_located_products_on_location_id"
  add_index "located_products", ["product_id"], :name => "index_located_products_on_product_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.integer  "warehouse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["location_id"], :name => "index_locations_on_location_id"
  add_index "locations", ["warehouse_id"], :name => "index_locations_on_warehouse_id"

  create_table "manufacture_orders", :force => true do |t|
    t.integer  "orderNumber"
    t.string   "type"
    t.string   "status"
    t.date     "scheduledDate"
    t.date     "issuedDate"
    t.date     "fullfilledDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.float    "cost"
    t.float    "width"
    t.float    "heigth"
    t.float    "length"
    t.string   "measureUnit"
    t.float    "weight"
    t.string   "weightUnit"
    t.string   "description"
    t.boolean  "active"
    t.float    "onHandBalance"
    t.float    "allocatedBalance"
    t.float    "nonActiveBalance"
    t.float    "availableBalance"
    t.float    "releasedRequirementsBalance"
    t.float    "availableToReleaseBalance"
    t.float    "totalRequirementsBalance"
    t.float    "qtyDue"
    t.string   "type"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materials", ["material_id"], :name => "index_materials_on_material_id"

  create_table "materials_material_groups", :id => false, :force => true do |t|
    t.integer "material_id"
    t.integer "material_group_id"
  end

  create_table "packages", :force => true do |t|
    t.string   "packageNumber"
    t.string   "note"
    t.float    "width"
    t.float    "heigth"
    t.float    "length"
    t.string   "measureUnit"
    t.float    "weight"
    t.string   "weightUnit"
    t.float    "totalCost"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "packages", ["document_id"], :name => "index_packages_on_document_id"

  create_table "pick_orders", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "scheduled"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posticks", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pricing_rules", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "applyToCustomer"
    t.string   "applyToProduct"
    t.string   "priceAdjustmentType"
    t.float    "priceAdjustmentPercentage"
    t.string   "relativeTo"
    t.float    "amount"
    t.string   "operator"
    t.float    "fixedValue"
    t.boolean  "applyToDates"
    t.date     "minDate"
    t.date     "maxDate"
    t.boolean  "applyToQuantities"
    t.float    "minQty"
    t.float    "maxQty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_material_details", :force => true do |t|
    t.integer  "product_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_material_details", ["material_id"], :name => "index_product_material_details_on_material_id"
  add_index "product_material_details", ["product_id"], :name => "index_product_material_details_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.float    "width"
    t.float    "heigth"
    t.float    "length"
    t.string   "measureUnit"
    t.float    "weight"
    t.string   "weightUnit"
    t.float    "onHandBalance"
    t.float    "allocatedBalance"
    t.float    "nonActiveBalance"
    t.float    "availableBalance"
    t.float    "releasedRequirementsBalance"
    t.float    "availableToReleaseBalance"
    t.float    "totalRequirementsBalance"
    t.float    "qtyDue"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_product_groups", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "product_group_id"
  end

  create_table "purchase_orders", :force => true do |t|
    t.integer  "orderNumber"
    t.date     "fullfillmentDate"
    t.string   "status"
    t.string   "vendorSalesOrderNumber"
    t.date     "dateIssued"
    t.date     "dateCompleted"
    t.date     "dateConfirmed"
    t.float    "totalWeight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "receiving_orders", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "orderNumber"
    t.string   "status"
    t.string   "refNumber"
    t.date     "billDate"
    t.integer  "packageCount"
    t.float    "receivedQty"
    t.float    "rejectedQty"
    t.float    "totalQty"
    t.date     "receiveDate"
    t.date     "reconcileDate"
    t.string   "reason"
    t.string   "trackingNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rma_orders", :force => true do |t|
    t.string   "orderNumber"
    t.string   "status"
    t.string   "type"
    t.string   "vendorRmaNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_orders", :force => true do |t|
    t.string   "orderNumber"
    t.string   "customerPurcharseOrderNumber"
    t.string   "vendorPurcharseOrderNumber"
    t.date     "fullfillmentDate"
    t.string   "status"
    t.date     "dateIssued"
    t.date     "dateCompleted"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schema_fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schema_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schemas", :force => true do |t|
    t.string   "name"
    t.string   "schemaType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schemas_schema_fields", :id => false, :force => true do |t|
    t.integer "schema_id"
    t.integer "schema_field_id"
  end

  create_table "shipping_orders", :force => true do |t|
    t.string   "orderNumber"
    t.string   "status"
    t.integer  "numberOfPackages"
    t.float    "totalWeight"
    t.date     "dateShipped"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transfer_orders", :force => true do |t|
    t.integer  "orderNumber"
    t.date     "dateIssued"
    t.date     "dateCompleted"
    t.date     "dateConfirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendor_materials", :force => true do |t|
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "accountNumber"
    t.float    "minOrderAmount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_orders", :force => true do |t|
    t.string   "orderNumber"
    t.string   "description"
    t.date     "scheduledDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
