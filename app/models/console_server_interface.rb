class ConsoleServerInterface < ActiveRecord::Base
  belongs_to :console_server

  has_one :device_console_interface, dependent: :nullify

  validates :number, uniqueness: {scope: :console_server_id}
end
