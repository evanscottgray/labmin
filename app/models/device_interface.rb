class DeviceInterface < ActiveRecord::Base
  belongs_to :device
  belongs_to :mrv_interface

  validates :name, uniqueness: {scope: :device_id}
  validates :mrv_interface_id, uniqueness: true 
end
