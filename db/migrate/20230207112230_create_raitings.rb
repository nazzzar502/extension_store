class CreateRaitings < ActiveRecord::Migration[6.0]
  def change
    create_table :raitings do |t|
      t.integer :value
      t.references :product

      t.timestamps
    end
  end
end
