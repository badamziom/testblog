class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :views
      t.integer :score

      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
