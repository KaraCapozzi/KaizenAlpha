class Timeforbookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :time, :time
    remove_column :users, :string, :string
    add_column :bookings, :status, :string
  end
end
