class Printer < ApplicationRecord
    belongs_to :printer_model, foreign_key: "printer_model_id"
    has_many :toners
end
