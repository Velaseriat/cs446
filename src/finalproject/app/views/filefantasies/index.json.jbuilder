json.array!(@filefantasies) do |filefantasy|
  json.extract! filefantasy, :id
  json.url filefantasy_url(filefantasy, format: :json)
end
