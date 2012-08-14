class PartOrderTable < ActiveRecord::Migration
  def change
    create_table :part_orders  do |t|
      t.string :number,   :null => false
      t.string :reference_number
      t.integer :from_unit_id,   :null => false
      t.integer :to_unit_id,   :null => false
      t.integer :status
      t.integer :ship_address_id
      t.integer :bill_address_id
      t.integer :type
      
      t.datetime :requested_date
      t.datetime :confirmed_date
      t.datetime :shiped_date
      t.datetime :received_date
      
      t.timestamps
    end
    
    create_table :part_order_items  do |t|
      t.integer :part_order_id,   :null => false
      t.integer :model_id,   :null => false
      t.integer :part_id,   :null => false
      t.integer :confirmed_part_id
      t.integer :status
      
      t.integer :requested_qty
      t.integer :confirmed_qty
      t.integer :shipped_qty
      t.integer :received_qty
      
      t.datetime :requested_date
      t.datetime :confirmed_date
      t.datetime :shiped_date
      t.datetime :received_date
      
      t.integer :requester_id
      t.integer :confirmer_id
      t.integer :shipper_id
      t.integer :receiver_id
      
      t.integer :from_part_order_item_id 
      t.boolean :is_in_vendor_warranty 
      t.integer :from_rma_detail_id
      
      t.timestamps
    end
    
    #add_index :part_orders, :number,        :unique => true
    
  end

end
