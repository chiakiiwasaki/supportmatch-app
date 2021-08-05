class AddIntroductionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :introduction, :text, default: "", null: false
    add_column :users, :image_id, :string, default: "", null: false
    add_column :users, :is_valid, :boolean, default: true, null: false

  end
end
