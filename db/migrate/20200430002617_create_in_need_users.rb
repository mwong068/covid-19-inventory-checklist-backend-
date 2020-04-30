class CreateInNeedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :in_need_users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :name
      t.string :location
      t.integer :family_size
      t.boolean :has_children
      t.boolean :can_pickup

      t.timestamps
    end
  end
end
