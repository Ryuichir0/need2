class AddStatusToHelps < ActiveRecord::Migration[6.0]
  def change
    add_column :helps, :status, :string, default: "pending"
  end
end
