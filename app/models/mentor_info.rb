class MentorInfo < ApplicationRecord
  belongs_to :user
  has_many :subcategories
end
