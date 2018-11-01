class RemoveShowtimesFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :showtimes, :json
  end
end

