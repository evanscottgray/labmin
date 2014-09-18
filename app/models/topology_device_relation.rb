class TopologyDeviceRelation < ActiveRecord::Base
  belongs_to :device
  belongs_to :topology

  validates :device_id, uniqueness: {scope: :topology_id}
end
