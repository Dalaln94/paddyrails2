json.array!(@caterings) do |catering|
  json.extract! catering, :id, :name, :picture, :lowprice, :highprice, :menu
  json.url catering_url(catering, format: :json)
end
