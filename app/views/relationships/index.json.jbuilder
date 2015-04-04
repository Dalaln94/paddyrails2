json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :category_id, :restaurant_id, :catering_id
  json.url relationship_url(relationship, format: :json)
end
