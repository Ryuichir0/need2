class Category < ApplicationRecord
  has_many :missions
  has_one_attached :photo


  
end
