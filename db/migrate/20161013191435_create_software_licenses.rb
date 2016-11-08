class CreateSoftwareLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :software_licenses do |t|
      t.string :name
      t.string :manuufacturer
      t.string :version
      t.string :serial
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
