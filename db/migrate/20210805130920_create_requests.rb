class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|

      t.integer :user_id, null: false, default: ""
      t.string :item, null: false, default: ""
      t.integer :urgency, null: false, default: 0
      t.integer :quantity, null: false, default: ""
      t.text :comment, null: false, default: ""
      t.string :postal_code, null: false, default: ""
      t.string :location, null: false, default: ""
      t.string :phone_number, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :name, null: false, default: ""
      t.boolean :is_done, null: false, default: false
      t.timestamps
    end
  end
end
