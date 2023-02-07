class AddProductForeignKeyToRaitings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :raitings, :users
    add_foreign_key :raitings, :products
  end
end
