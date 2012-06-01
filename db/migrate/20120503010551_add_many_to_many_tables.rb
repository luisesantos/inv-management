class AddManyToManyTables < ActiveRecord::Migration
  def change
    create_table :activities_rols, :id => false do |t|
      t.integer :activity_id
      t.integer :rol_id
    end
    create_table :activities_application_users, :id => false do |t|
      t.integer :activity_id
      t.integer :application_user_id
    end
    create_table :application_users_rols, :id => false do |t|
      t.integer :rol_id
      t.integer :applicationUser_id
    end
    create_table :application_users_user_groups, :id => false do |t|
      t.integer :application_user_id
      t.integer :user_group_id
    end
    create_table :employees_employee_groups, :id => false do |t|
      t.integer :employee_id
      t.integer :employee_group_id
    end
    create_table :fields_groups_schemas, :id => false do |t|
      t.integer :fields_group_id
      t.integer :schema_id
    end
    create_table :fields_groups_schema_fields, :id => false do |t|
      t.integer :fields_group_id
      t.integer :schema_field_id
    end
    create_table :inventories_warehouses, :id => false do |t|
      t.integer :inventory_id
      t.integer :warehouse_id
    end
    create_table :materials_material_groups, :id => false do |t|
      t.integer :material_id
      t.integer :material_group_id
    end
    create_table :products_product_groups, :id => false do |t|
      t.integer :product_id
      t.integer :product_group_id
    end
    create_table :schemas_schema_fields, :id => false do |t|
      t.integer :schema_id
      t.integer :schema_field_id
    end
  end
end
