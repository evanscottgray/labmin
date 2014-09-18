class Reservation < ActiveRecord::Base
  #belongs_to user might be busted
  belongs_to :user

  belongs_to :topology
  
  has_many :saved_configurations

  validates :name, uniqueness: true
  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
end
