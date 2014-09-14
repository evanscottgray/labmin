class ConsoleServer < ActiveRecord::Base
  has_many :console_server_interfaces

  validates :name, uniqueness: true
  validates :ip_address, uniqueness: true
end
