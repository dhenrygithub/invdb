json.extract! network, :id, :VLAN_id, :net_address, :subnet_mask, :network_bits, :node_start, :node_end, :nodes, :broadcast_address, :created_at, :updated_at
json.url network_url(network, format: :json)