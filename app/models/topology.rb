class Topology < ActiveRecord::Base
  belongs_to :reservation

  has_many :devices, through: :topology_device_relations
  has_many :mrv_mappings
  has_many :reservations

  validates :name, uniqueness: true
end
