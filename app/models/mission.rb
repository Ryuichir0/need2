class Mission < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :helps

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [:address],
    using: {
      tsearch: { prefix: true }
    }

  scope :pending, -> {
    includes(:helps).where.not(helps:{status:"confirmed"}).or(Mission.includes(:helps).where(helps: {id: nil}))
  }


end
