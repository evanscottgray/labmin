class DeviceConsoleInterface < ActiveRecord::Base
  belongs_to :console_server_interface
  belongs_to :device
  
  
  validates :name, uniqueness: {scope: :device_id}
  validates :console_server_interface, uniqueness: true 
end
