class Ticket < ApplicationRecord
  belongs_to :movie, through: :showtime
  belongs_to :showtime
end
