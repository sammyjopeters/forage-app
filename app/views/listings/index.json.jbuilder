json.array!(@listings) do |listing|
  json.extract! listing, :id, :goods_type, :amount, :description, :location, :transaction_type, :cost, :expiry, :user_id, :pictures, :location_state, :sold, :sold_to
  json.url listing_url(listing, format: :json)
end
