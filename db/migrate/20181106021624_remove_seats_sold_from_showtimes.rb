class RemoveSeatsSoldFromShowtimes < ActiveRecord::Migration[5.1]
  def change
    remove_column :showtimes, :seats_sold, :integer
  end
end
