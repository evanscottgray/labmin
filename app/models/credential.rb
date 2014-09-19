class Credential < ActiveRecord::Base
  has_many :devices, dependent: :nullify
  has_many :console_servers, dependent: :nullify
  has_many :mrvs, dependent: :nullify

  validates :name, uniqueness: true, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
