class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :price, scale: 2, precision: 12
      t.integer :discount
      t.integer :stock, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
