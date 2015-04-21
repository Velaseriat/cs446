json.array!(@homebases) do |homebasis|
  json.extract! homebasis, :id, :name
  json.url homebasis_url(homebasis, format: :json)
end
