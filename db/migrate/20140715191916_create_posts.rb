class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.belongs_to :category

      t.string :title
      t.text :body
      t.integer :price

      t.timestamps
    end
  end
end
