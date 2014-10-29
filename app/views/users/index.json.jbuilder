json.array!(@users) do |user|
  json.extract! user, :id, :nick, :mail
  json.url user_url(user, format: :json)
end
