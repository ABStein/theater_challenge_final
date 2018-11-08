class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  has_many :tickets

  validates :movie_id, :theater_id, :start_time, presence: true
  validates :theater_id, uniqueness: { scope: :start_time }

  # model to keep track of the tickets bought
  def seats_sold
    tickets.count
  end

  # model helping to let user know that a movie has sold out
  def sold_out?
    seats_sold >= theater.seat_capacity
  end
end
