class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :property_id
      t.date :check_in
      t.date :check_out
      t.integer :guest_number

      t.timestamps
    end
  end
end
