class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :helps
  has_many :missions

  has_many :helps_as_helpee, through: :missions, source: :helps
  has_many :helps_as_helper, through: :missions, source: :helps

  has_one_attached :avatar

  def rating_as_helper
    if helps_as_helper.pluck(:helper_rating).sum > 0 
     helps_as_helper.pluck(:helper_rating).sum / helps_as_helper.count.to_f
    end
  end

  def rating_as_helpee
    if helps_as_helpee.pluck(:helpee_rating).sum > 0
    helps_as_helpee.pluck(:helpee_rating).sum / helps_as_helpee.count.to_f
    end
  end

  def review_for_helpee
    helps_as_helpee.where.not(helpee_review: nil).pluck(:helpee_review)
  end
  def review_for_helper
    helps_as_helper.where.not(helper_review: nil).pluck(:helper_review)
  end
end
