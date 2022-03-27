class CreatePrinterTonerModelJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :printer_models, :toner_models do |t|
      # t.index [:printer_model_id, :toner_model_id]
      # t.index [:toner_model_id, :printer_model_id]
    end
  end
end
