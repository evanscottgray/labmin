class Ipv4Address < ActiveRecord::Base
  belongs_to :ipv4_addressable, polymorphic: true

  validates :address, uniqueness: true
end
