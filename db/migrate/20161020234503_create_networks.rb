require 'ipaddress'

class CreateNetworks < ActiveRecord::Migration[5.0]
  def change
    create_table :networks do |t|
      t.integer :VLAN_id
      t.text :net_address
      t.text :subnet_mask
      t.integer :network_bits
      t.text :node_start
      t.text :node_end
      t.integer :nodes
      t.text :broadcast_address

      t.timestamps
    end
  end
end
