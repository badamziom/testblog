class AddImageToPost < ActiveRecord::Migration
  def change

    add_column :posts, :image_file_name, :string
    add_column :posts, :image_file_size, :integer
    add_column :posts, :image_content_type, :string
    add_column :posts, :image_updated_at, :datetime

    def self.up
      change_table :posts do |t|
        t.attachment :image
      end
    end

    def self.down
      remove_attachment :posts, :image
    end
  end
end
