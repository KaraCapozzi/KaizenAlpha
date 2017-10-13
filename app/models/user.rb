class User < ApplicationRecord
  has_one :mentor_info
  has_many :mentor_subcats
  has_secure_password
end
