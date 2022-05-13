# frozen_string_literal: true

class Toner < ApplicationRecord
  belongs_to :toner_model, foreign_key: 'toner_model_id'
  belongs_to :printer, foreign_key: 'printer_id', optional: true

  validate :toner_cannot_be_spent_if_is_used

  scope :in_use, -> { joins(:toner_model).where(is_used: true) }

  scope :unused, -> { where(printer_id: nil) }

  scope :black_in_use, -> { in_use.where(toner_models: { color: 'black' }) }
  scope :cyan_in_use, -> { in_use.where(toner_models: { color: 'cyan' }) }
  scope :magenta_in_use, -> { in_use.where(toner_models: { color: 'magenta' }) }
  scope :yellow_in_use, -> { in_use.where(toner_models: { color: 'yellow' }) }

  def toner_cannot_be_spent_if_is_used
    if is_used && is_spent
      errors.add(:is_spent,
                 'Toner cannot be spent and in use at the same time')
    end
  end
end
