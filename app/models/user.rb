class User < ApplicationRecord
  has_one :mentor_info
  has_and_belongs_to_many :subcategories
  has_secure_password
end
