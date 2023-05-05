# frozen_string_literal: true

# This is a Ruby class that creates a database table for users with email, password, and birthday
# columns, and adds an index for email with a unique constraint.
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, limit: 50
      t.string :password, null: false, limit: 72
      t.date :birthday, null: false
      t.timestamps
    end

    add_index :users, :email, unique: true
    # Ex:- add_index("admin_users", "username")
  end
end
