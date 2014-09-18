class Credential < ActiveRecord::Base
  has_many :devices
  has_many :console_servers
  has_many :mrvs

  validates :name, uniqueness: true
  validates :username, presence: true
  validates :password, presence: true
end
