class ConsoleServerInterface < ActiveRecord::Base
  validates :name, uniqueness: true
end
