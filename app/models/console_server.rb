class ConsoleServer < ActiveRecord::Base
  has_one :ipv4_address, as: :ipv4_addressable, dependent: :destroy
  has_many :console_server_interfaces, dependent: :destroy

  belongs_to :credential

  validates :telnet_base_port, presence: true
  validates :ssh_base_port, presence: true

  validates :name, uniqueness: true

  accepts_nested_attributes_for :ipv4_address, :allow_destroy => true
  accepts_nested_attributes_for :console_server_interfaces, :allow_destroy => true
end
