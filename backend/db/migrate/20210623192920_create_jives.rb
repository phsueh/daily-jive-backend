class CreateJives < ActiveRecord::Migration[5.2]
  def change
    create_table :jives do |t|
      t.string :name
      t.string :post_type
      t.string :post
      t.string :pics
      t.string :url
      t.integer :user_id
    end
  end
end
