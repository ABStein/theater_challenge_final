class CreateShowtimes < ActiveRecord::Migration[5.1]
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.integer :seats_sold
      t.datetime :start_time

      t.timestamps
    end
  end
end
