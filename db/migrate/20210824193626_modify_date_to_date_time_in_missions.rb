class ModifyDateToDateTimeInMissions < ActiveRecord::Migration[6.0]
  def change
    change_column :missions, :finished_at, :datetime
    change_column :missions, :started_ad, :datetime
  end
end
