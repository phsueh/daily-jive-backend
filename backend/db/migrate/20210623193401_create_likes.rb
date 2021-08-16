class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :likes
      t.integer :dislikes
      t.integer :user_id
      t.integer :jive_id
    end
  end
end
