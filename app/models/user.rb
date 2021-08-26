class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :helps
  has_many :missions
  has_one_attached :avatar

  def rating
    helps.pluck(:review_rating).sum / helps.count.to_f
  end

end
