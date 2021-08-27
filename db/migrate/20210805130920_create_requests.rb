class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|

      t.integer :user_id
      t.string :item
      t.integer :urgency, null: false, default: 0
      t.string :quantity
      t.text :comment
      t.string :postal_code
      t.string :location
      t.string :phone_number
      t.string :email
      t.string :name
      t.boolean :is_done, null: false, default: false
      t.integer :impressions_count, null: false, default: 0
      t.integer :genre, null: false, default: 0

      t.timestamps
    end
  end
end
