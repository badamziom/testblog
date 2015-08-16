class CreateUserToAchievements < ActiveRecord::Migration
  def change
    create_table :user_to_achievements do |t|

      t.belongs_to :user, index: true
      t.belongs_to :achievement, index: true

      t.timestamps null: false
    end
  end
end
