json.array!(@users) do |user|
  json.extract! user, :id, :uid, :s1, :s2, :s3, :s4a, :s4b, :s4c, :s5a, :s5b, :s5c, :s6a, :s6b, :s6c, :s7a, :s7b, :s7c, :s8a, :s8b, :s8c, :s9, :s10
  json.url user_url(user, format: :json)
end
