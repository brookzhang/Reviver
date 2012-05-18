class OrganizationUnitBaseStructure < ActiveRecord::Migration
  def change
    create_table :units  do |t|
      t.string :code,     :null => false, :default => ""
      t.string :name
      t.string :shortname
      t.string :region
      t.integer :status
      t.timestamps
    end
    
    create_table :unit_routings  do |t|
      t.string :from_unit_code,   :null => false, :default => ""
      t.string :to_unit_code,   :null => false, :default => ""
      t.string :routing_type,   :null => false, :default => ""
      t.integer :status
      t.timestamps
    end
    
    create_table :unit_roles  do |t|
      t.string :unit_code,   :null => false, :default => ""
      t.string :role_code,   :null => false, :default => ""
      t.timestamps
    end
    
    create_table :roles  do |t|
      t.string :code,   :null => false, :default => ""
      t.string :name
      t.string :description
      t.string :current_url   ## as a dashboard for a role
      t.timestamps
    end
    
    create_table :functions  do |t|
      t.integer :parent_id,   :null => false, :default => 0
      t.string :code,   :null => false, :default => ""
      t.string :name
      t.string :description
      t.timestamps
    end
    
    create_table :role_functions  do |t|
      t.string :role_code,   :null => false, :default => ""
      t.string :function_code,   :null => false, :default => ""
      t.timestamps
    end
    
    create_table :user_roles  do |t|
      t.integer :user_id,   :null => false, :default => ""
      t.integer :unit_role_id,   :null => false, :default => ""
      t.integer :status
      t.timestamps
    end
    
    
    
    
    
    
    
    add_index :units, :code,        :unique => true
    add_index :roles, :code,        :unique => true
    add_index :functions, :code,    :unique => true
  end
  
  


end
