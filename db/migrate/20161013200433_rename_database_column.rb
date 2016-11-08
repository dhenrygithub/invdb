class RenameDatabaseColumn < ActiveRecord::Migration[5.0]

def self.up
rename_column :software_licenses, :manuufacturer, :manufacturer
end

def self.down
 # rename back if you need or do something else or do nothing
end

end
