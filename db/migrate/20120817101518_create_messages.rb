class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :comment
      t.integer :reply_to

      t.timestamps
    end
  end
end
