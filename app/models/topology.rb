class Topology < ActiveRecord::Base
  belongs_to :reservation

  validates :name, uniqueness: true
end
