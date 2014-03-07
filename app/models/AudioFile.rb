class AudioFile < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :mp3, presence: true, uniqueness: true
end





