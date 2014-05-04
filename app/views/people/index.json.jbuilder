json.array!(@people) do |person|
  json.extract! person, :id, :names, :birthdate, :phone_number
  json.url person_url(person, format: :json)
end
