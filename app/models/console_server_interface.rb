class ConsoleServerInterface < ActiveRecord::Base
  belongs_to :console_server

  validates :name, uniqueness: true
end
