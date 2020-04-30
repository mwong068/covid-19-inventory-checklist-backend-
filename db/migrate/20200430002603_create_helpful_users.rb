class CreateHelpfulUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :helpful_users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :name
      t.string :location
      t.integer :family_size
      t.string :phone_number
      t.boolean :has_children
      t.boolean :can_deliver

      t.timestamps
    end
  end
end
