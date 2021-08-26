class CreateHelps < ActiveRecord::Migration[6.0]
  def change
    create_table :helps do |t|
      t.string :helpee_review
      t.float :helpee_rating
      t.string :helper_review
      t.float :helper_rating
      t.references :user, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
