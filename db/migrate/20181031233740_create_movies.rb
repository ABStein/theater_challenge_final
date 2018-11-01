class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.string :runtime
      t.string :img
      t.json :showtimes
      t.integer :seat_capacity

      t.timestamps
    end
  end
end
