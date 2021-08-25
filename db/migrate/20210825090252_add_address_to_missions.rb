class AddAddressToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :address, :string
  end
end
