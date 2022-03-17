json.extract! printer_model, :id, :make, :model, :is_color, :toner_cyan, :toner_magenta, :toner_yellow, :toner_black, :has_replaceable_fuser, :fuser_kit, :has_replaceable_transfer_belt, :transfer_kit, :created_at, :updated_at
json.url printer_model_url(printer_model, format: :json)
