# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
    add_index :likes, %i[user_id food_id], unique: true
  end
end
