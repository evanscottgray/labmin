class Ipv4Address < ActiveRecord::Base
  validates :address, uniqueness: true

  belongs_to :ipv4_addressable, polymorphic: true
end
