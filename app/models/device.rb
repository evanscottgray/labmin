class Device < ActiveRecord::Base
  belongs_to :credential

  has_many :ipv4_addresses, as: :ipv4_addressable, dependent: :destroy
  has_many :device_interfaces, dependent: :destroy
  has_many :device_console_interfaces, dependent: :destroy
  has_many :saved_configurations, dependent: :destroy

  validates :name, uniqueness: true

  accepts_nested_attributes_for :ipv4_addresses, :allow_destroy => true
  accepts_nested_attributes_for :device_interfaces, :allow_destroy => true
  accepts_nested_attributes_for :device_console_interfaces, :allow_destroy => true
  accepts_nested_attributes_for :saved_configurations, :allow_destroy => true
end
