class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :score

      t.belongs_to :post, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
