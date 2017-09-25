class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true
      t.integer :starting_price

      t.timestamps
    end
  end
end
