class CreateTeddies < ActiveRecord::Migration[7.0]
  def change
    create_table :teddies do |t|
      t.string :sku
      t.string :name
      t.monetize :amount
      t.references :category, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end