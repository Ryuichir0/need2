class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :helps
  has_many :missions

  has_many :helps_as_helpee, through: :missions, source: :helps

  has_one_attached :avatar

  def rating_as_helper
    helps.pluck(:helper_rating).sum / helps.count.to_f
  end

  def rating_as_helpee
    helps_as_helpee.pluck(:helpee_rating).sum / helps_as_helpee.count.to_f
  end

  def review_for_helpee
    helps_as_helpee.pluck(:helpee_review)
  end
end
