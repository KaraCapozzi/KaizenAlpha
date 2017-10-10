class Deladd < ActiveRecord::Migration[5.1]
  def change
    column_remove :bookings, :date, :string
    add_column :bookings, :date, :date
  end
end
