class Topology < ActiveRecord::Base
  belongs_to :reservation

  has_many :topology_device_relations
  has_many :devices, through: :topology_device_relations, dependent: :destroy

  has_many :mrv_mappings, dependent: :destroy
  has_many :reservations, dependent: :nullify

  validates :name, uniqueness: true

  accepts_nested_attributes_for :topology_device_relations, :allow_destroy => true
end
