json.array!(@brigades) do |brigade|
  json.extract! brigade, :id, :name
  json.url brigade_url(brigade, format: :json)
end
