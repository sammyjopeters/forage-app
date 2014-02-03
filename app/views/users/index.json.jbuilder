json.array!(@users) do |user|
  json.extract! user, :id, :name, :email_address, :username, :password, :home_location, :purchases, :merchant_type, :avatar
  json.url user_url(user, format: :json)
end
