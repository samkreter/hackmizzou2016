json.array!(@people) do |person|
  json.extract! person, :id, :name, :email, :affil, :hear
  json.url person_url(person, format: :json)
end
