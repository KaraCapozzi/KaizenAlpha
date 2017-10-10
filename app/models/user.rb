class User < ApplicationRecord
  has_many :mentor_info
  has_many :sub_categories through: mentor_infos
end
