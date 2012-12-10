class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :quantityInStock

      t.timestamps
    end
  end
end
