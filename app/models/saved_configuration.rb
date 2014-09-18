class SavedConfiguration < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :device

  validates :content, presence: true
end
