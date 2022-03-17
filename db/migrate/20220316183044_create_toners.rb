class CreateToners < ActiveRecord::Migration[7.0]
  def change
    create_table :toners do |t|
      t.string :type
      t.integer :color
      t.string :oem_name
      t.decimal :purchase_net_price

      t.timestamps
    end
  end
end
