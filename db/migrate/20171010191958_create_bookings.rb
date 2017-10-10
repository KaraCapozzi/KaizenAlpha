class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :mentor_id
      t.integer :student_id
      t.string :date
      t.string :status

      t.timestamps
    end
  end
end
