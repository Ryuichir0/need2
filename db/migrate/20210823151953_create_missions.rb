class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :description
      t.date :finished_at
      t.date :started_ad
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
