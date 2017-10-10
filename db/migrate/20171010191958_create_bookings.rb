class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :mentor_id
      t.integer :student_id
      t.integer :date

      t.timestamps
    end
  end
end
