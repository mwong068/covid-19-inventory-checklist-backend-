class CreateNeededItems < ActiveRecord::Migration[6.0]
  def change
    create_table :needed_items do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.string :urgency
      t.integer :in_need_user_id
      t.integer :category_id
      
      t.timestamps
    end
  end
end
