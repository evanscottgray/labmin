class MrvMapping < ActiveRecord::Base

  belongs_to :topology
  belongs_to :a_side_interface, :class_name => 'MrvInterface'
  belongs_to :z_side_interface, :class_name => 'MrvInterface'

  validates :a_side_id, uniqueness: true
  validates :z_side_id, uniqueness: true
end
