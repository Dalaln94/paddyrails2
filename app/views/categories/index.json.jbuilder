json.array!(@categories) do |category|
  json.extract! category, :id, :nametype, :timeopen, :type
  json.url category_url(category, format: :json)
end
