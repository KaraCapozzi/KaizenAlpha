class User < ApplicationRecord
  has_one :mentor_info
  has_many :subcategories
  has_secure_password
end
