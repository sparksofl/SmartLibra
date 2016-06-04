class AddPicToCoins < ActiveRecord::Migration[5.1]
  def change
    add_column :coins, :pic, :string
  end
end
