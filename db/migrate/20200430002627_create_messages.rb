class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message_text
      t.integer :helpful_user_id
      t.integer :in_need_user_id

      t.timestamps
    end
  end
end
