class Toner < ApplicationRecord
    belongs_to :toner_model, foreign_key: "toner_model_id"
    belongs_to :printer, foreign_key: "printer_id"
end
