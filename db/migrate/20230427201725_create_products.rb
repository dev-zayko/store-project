# frozen_string_literal: true

# This is a Ruby class that creates a migration to create a "products" table with columns for brand,
# price, stock, and availability.
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :brand, null: false, limit: 50
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :stock, null: false
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
