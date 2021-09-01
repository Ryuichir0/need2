class ModifyRatingOnHelps < ActiveRecord::Migration[6.0]
  def change
    change_column :helps, :helpee_rating, :integer, default: 0
    change_column :helps, :helper_rating, :integer, default: 0
  end
end
