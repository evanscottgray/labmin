class Mrv < ActiveRecord::Base
  has_one :ipv4_address, as: :ipv4_addressable
  has_many :mrv_interfaces

  validates :name, uniqueness: true
end
