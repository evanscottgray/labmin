class Reservation < ActiveRecord::Base
  belongs_to :user

  belongs_to :topology
  
  has_many :saved_configurations, dependent: :destroy

  validates :name, uniqueness: true
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true

  accepts_nested_attributes_for :saved_configurations, :allow_destroy => true
end
