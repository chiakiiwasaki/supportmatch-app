class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.text :content
      t.boolean :is_valid, default: true

      t.timestamps
    end
  end
end
