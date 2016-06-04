class AddAttachmentPicToResults < ActiveRecord::Migration
  def self.up
    change_table :results do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :results, :pic
  end
end
