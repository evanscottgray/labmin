class MrvInterface < ActiveRecord::Base
  belongs_to :mrv
  
  has_one :device_interface

  has_many :mrv_mappings 
  has_many :a_side_mappings, :foreign_key => :a_side, :class_name => 'MrvMapping'
  has_many :z_side_mappings, :foreign_key => :z_side, :class_name => 'MrvMapping'

  validates :name, uniqueness: {scope: :mrv_id}

end
