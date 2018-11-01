class RemoveSeatCapacityFromMovie < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :seat_capacity, :integer
  end
end
