class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :votes, default: 0

      t.references :user
      t.references :category
      t.references :parent_post

      t.timestamps
    end
  end
end
