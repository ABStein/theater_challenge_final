class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :showtime_id
      t.string :full_name
      t.string :email
      t.string :credit_card_number
      t.integer :expiration_date

      t.timestamps
    end
  end
end
