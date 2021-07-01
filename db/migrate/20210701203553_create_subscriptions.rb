class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :user_id
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_set_at

      t.timestamps
    end
    add_index :subscriptions, :email
    add_index :subscriptions, :user_id
  end
end
