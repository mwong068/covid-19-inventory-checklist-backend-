class CreateHelpfulItems < ActiveRecord::Migration[6.0]
  def change
    create_table :helpful_items do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.string :availability
      t.string :image_url
      t.integer :helpful_user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
