class DeviceInterface < ActiveRecord::Base
  belongs_to :device
  belongs_to :mrv_interface
end
