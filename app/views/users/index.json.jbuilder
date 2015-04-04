json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :dob, :gender, :email, :number, :loyaltypoint, :moneyinfo_id
  json.url user_url(user, format: :json)
end
