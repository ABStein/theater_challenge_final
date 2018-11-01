class Showtime < ApplicationRecord
  belongs_to :movie
  has_many :tickets
  belongs_to :theater
end
