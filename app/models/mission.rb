class Mission < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :helps
  has_one_attached :photo_category

   geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [:address],
    using: {
      tsearch: { prefix: true }
    }
end
