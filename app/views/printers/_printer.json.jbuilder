json.extract! printer, :id, :name, :asset_id, :purchase_date, :purchase_net_price, :location, :ip_reservation, :primary_user, :created_at, :updated_at
json.url printer_url(printer, format: :json)
