class Subcategory < ApplicationRecord
  has_many :mentor_info
  has_many :users, through: :mentor_infos
  belongs_to :category


end
