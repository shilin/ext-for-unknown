class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, precision: 10, scale: 2
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
