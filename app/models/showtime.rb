class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  has_many :tickets

  validates :movie_id, :theater_id, :start_time, presence: true
  validates :theater_id, uniqueness: { scope: :start_time }

end
