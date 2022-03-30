class Toner < ApplicationRecord
    belongs_to :toner_model, foreign_key: "toner_model_id"
    belongs_to :printer, foreign_key: "printer_id"

    validate :toner_cannot_be_spent_if_is_used

    scope :black, -> { joins(:toner_model).where(toner_models: {color: "black"})}
    scope :cyan, -> { joins(:toner_model).where(toner_models: {color: "cyan"})}
    scope :magenta, -> { joins(:toner_model).where(toner_models: {color: "magenta"})}
    scope :yellow, -> { joins(:toner_model).where(toner_models: {color: "yellow"})}

    scope :black_in_use, -> { black.where(is_used: true)}
    scope :cyan_in_use, -> { cyan.where(is_used: true)}
    scope :magenta_in_use, -> { magenta.where(is_used: true)}
    scope :yellow_in_use, -> { yellow.where(is_used: true)}

    def toner_cannot_be_spent_if_is_used
        if is_used && is_spent
            errors.add(:is_spent, "Cannot be spent if is_used, change is_used flag")
        end
    end
end
