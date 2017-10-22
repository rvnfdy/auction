# frozen_string_literal: true

class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
