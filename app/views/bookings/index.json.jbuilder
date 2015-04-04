json.array!(@bookings) do |booking|
  json.extract! booking, :id, :bdateMade, :numofpeople, :beventdate, :beventtype, :bstime, :bcompleted, :active_status, :user_id, :restaurant_id, :catering_id
  json.url booking_url(booking, format: :json)
end
