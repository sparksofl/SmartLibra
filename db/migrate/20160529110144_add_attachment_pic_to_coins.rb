class AddAttachmentPicToCoins < ActiveRecord::Migration
  def self.up
    change_table :coins do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :coins, :pic
  end
end
