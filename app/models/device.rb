class Device < ActiveRecord::Base
  belongs_to :credential

  has_many :ipv4_addresses, as: :ipv4_addressable
  has_many :device_interfaces
  has_many :device_console_interfaces
  has_many :saved_configurations

  validates :name, uniqueness: true
end
