class MrvMapping < ActiveRecord::Base

  belongs_to :topology

  #completely remove these relations if they are not eventually needed as they are complex.
  #should be able to efficiently access everything needed through :mrv_mappings.
  #belongs_to :a_side_interface, :class_name => 'MrvInterface'
  #belongs_to :z_side_interface, :class_name => 'MrvInterface'

  validates :a_side_id, uniqueness: {scope: :topology_id}
  validates :z_side_id, uniqueness: {scope: :topology_id}
end
