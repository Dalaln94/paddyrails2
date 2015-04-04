json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :picture, :address, :lowprice, :highprice, :menu
  json.url restaurant_url(restaurant, format: :json)
end
