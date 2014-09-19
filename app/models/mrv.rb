class Mrv < ActiveRecord::Base
  has_one :ipv4_address, as: :ipv4_addressable, dependent: :destroy
  has_many :mrv_interfaces, dependent: :destroy

  validates :name, uniqueness: true

  accepts_nested_attributes_for :ipv4_address, :allow_destroy => true
  accepts_nested_attributes_for :mrv_interfaces, :allow_destroy => true
end
