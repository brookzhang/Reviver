class ProductModelPart < ActiveRecord::Migration
  def change
    create_table :products  do |t|
      t.string :code,     :null => false, :default => ""
      t.string :name
      t.string :description
      t.integer :status
      t.timestamps
    end
    
    create_table :series  do |t|
      t.integer :product_id,   :null => false, :default => 0
      t.string :name
      t.string :description
      t.integer :status
      t.timestamps
    end
    
    create_table :models  do |t|
      t.integer :product_id,   :null => false, :default => 0
      t.integer :series_id,   :null => false, :default => 0
      t.string :model,   :null => false, :default => ""
      t.string :name
      t.string :description
      t.integer :status
      t.integer :preid
      t.timestamps
    end
    
    
    create_table :parts  do |t|
      t.string :partnumber,   :null => false, :default => ""
      t.string :mapping_number
      t.string :name
      t.integer :status
      t.integer :preid
      t.timestamps
    end
    
    create_table :model_parts  do |t|
      t.integer :model_id,   :null => false
      t.integer :part_id,   :null => false
      t.timestamps
    end
    
    
    
    
    
    
    
    add_index :models, :model,        :unique => true
    add_index :parts, :partnumber,        :unique => true
  end
  
  
end
