class DeviceInterface < ActiveRecord::Base
  belongs_to :device
  belongs_to :mrv_interface

  validates :name, uniqueness: true
end
