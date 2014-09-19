class Reservation < ActiveRecord::Base
  belongs_to :user

  belongs_to :topology
  
  has_many :saved_configurations, dependent: :destroy

  validates :name, uniqueness: true
  validates :start_date_time, presence: true
  validates :end_date_time, presence: true

  accepts_nested_attributes_for :saved_configurations, :allow_destroy => true
end
