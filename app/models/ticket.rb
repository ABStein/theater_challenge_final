class Ticket < ApplicationRecord
  belongs_to :showtime, optional: true
  belongs_to :movie, optional: true

  validates :credit_card_number, length: { minimum: 13 }
  validates :credit_card_number , length: { maximum: 16 }
  validates :showtime_id, :full_name, :email, presence: true
  validates :email, confirmation: true

end
