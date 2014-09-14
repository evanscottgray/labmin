class Mrv < ActiveRecord::Base
  has_many :mrv_interfaces

  validates :name, uniqueness: true
  validates :ip_address, uniqueness: true
end
