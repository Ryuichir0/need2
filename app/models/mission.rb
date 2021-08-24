class Mission < ApplicationRecord
  belongs_to :user

  has_many :helps
end
