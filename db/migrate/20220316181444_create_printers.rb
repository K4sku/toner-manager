class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.string :name
      t.string :asset_id
      t.date :purchase_date
      t.decimal :purchase_net_price
      t.string :location
      t.string :ip_reservation
      t.string :primary_user

      t.timestamps
    end
  end
end
