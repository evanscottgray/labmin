class ConsoleServer < ActiveRecord::Base
  has_one :ipv4_address, as: :ipv4_addressable
  has_many :console_server_interfaces

  belongs_to :credential

  validates :telnet_base_port, presence: true
  validates :ssh_base_port, presence: true

  validates :name, uniqueness: true

  accepts_nested_attributes_for :ipv4_address
  accepts_nested_attributes_for :console_server_interfaces
end
