class CreateTonerModels < ActiveRecord::Migration[7.0]
  def change
    create_table :toner_models do |t|
      t.string :make
      t.string :type
      t.string :model
      t.string :color

      t.timestamps
    end
  end
end
