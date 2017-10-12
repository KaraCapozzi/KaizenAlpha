class User < ApplicationRecord
  has_many :mentor_info
  has_many :sub_categories, through: :mentor_infos
  has_secure_password
end
