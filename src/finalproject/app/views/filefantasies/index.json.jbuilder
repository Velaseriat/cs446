json.array!(@filefantasies) do |filefantasy|
  json.extract! filefantasy, :id, :name
  json.url filefantasy_url(filefantasy, format: :json)
end
