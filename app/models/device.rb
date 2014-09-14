class Device < ActiveRecord::Base
  has_many :device_interfaces
end
