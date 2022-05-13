# frozen_string_literal: true

json.extract! toner, :id, :type, :color, :oem_name, :purchase_net_price, :created_at, :updated_at
json.url toner_url(toner, format: :json)
