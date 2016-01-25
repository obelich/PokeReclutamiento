json.array!(@people) do |person|
  json.extract! person, :id, :names, :lastname, :mothername, :birthdate
  json.url person_url(person, format: :json)
end
