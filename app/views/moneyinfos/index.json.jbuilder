json.array!(@moneyinfos) do |moneyinfo|
  json.extract! moneyinfo, :id, :startdate, :paymenttype, :user_id
  json.url moneyinfo_url(moneyinfo, format: :json)
end
