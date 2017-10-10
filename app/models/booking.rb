class Booking < ApplicationRecord
  belongs_to :user 
  belongs_to :mentor_info
end
