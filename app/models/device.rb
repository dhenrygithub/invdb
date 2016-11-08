class Device < ApplicationRecord
    has_many :software_licenses, dependent: :destroy
    validates :name, presence: true,
                    length: { minimum: 3 }
    validates :device_type, presence: true
end
