# frozen_string_literal: true

json.extract! part_kit, :id, :type, :oem_name, :purchase_net_price, :created_at, :updated_at
json.url part_kit_url(part_kit, format: :json)
