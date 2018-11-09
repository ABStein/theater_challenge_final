class Theater < ApplicationRecord
  has_many :showtimes
  has_many :movies, through: :showtimes

  validates :name, :seat_capacity, presence: true
  validates :name, uniqueness: true
  validates :seat_capacity, numericality: { only_integer: true }

end
