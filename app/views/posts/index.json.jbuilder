json.array!(@posts) do |post|
  json.extract! post, :id, :content, :user_id, :restaurant_id, :catering_id
  json.url post_url(post, format: :json)
end
