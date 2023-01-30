class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :name
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
