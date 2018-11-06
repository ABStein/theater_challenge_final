class Movie < ApplicationRecord
  has_many :showtimes
  has_many :tickets, through: :showtimes

  def display_time
    hours = runtime.to_i / 60
    minutes = runtime.to_i % 60
    "#{hours}hr #{minutes}min"
  end
end
