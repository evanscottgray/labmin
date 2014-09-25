class MrvInterface < ActiveRecord::Base
  belongs_to :mrv
  
  has_one :device_interface, dependent: :nullify

  has_many :mrv_mappings, dependent: :destroy 

  #completely remove these relations if they are not eventually needed as they are complex.
  #should be able to efficiently access everything needed through :mrv_mappings.  
  #has_many :a_side_mappings, :foreign_key => :a_side, :class_name => 'MrvMapping'
  #has_many :z_side_mappings, :foreign_key => :z_side, :class_name => 'MrvMapping'

  validates :name, uniqueness: {scope: :mrv_id}

  #The UI should allow the user to select the MRV port from the perspective of the device instead.
  #accepts_nested_attributes_for :device_interface
  
  accepts_nested_attributes_for :mrv_mappings, :allow_destroy => true
end
