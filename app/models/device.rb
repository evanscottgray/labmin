class Device < ActiveRecord::Base
  has_many :device_interfaces

  validates :name, uniqueness: true
end
