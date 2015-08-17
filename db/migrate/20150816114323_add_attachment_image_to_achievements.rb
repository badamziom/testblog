class AddAttachmentImageToAchievements < ActiveRecord::Migration
  def self.up
    change_table :achievements do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :achievements, :image
  end
end
