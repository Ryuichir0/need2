class Help < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  AUTHORIZED_RATINGS = (1..5)

end
