json.array!(@filedownloads) do |filedownload|
  json.extract! filedownload, :id, :user_id, :fileupload_id
  json.url filedownload_url(filedownload, format: :json)
end
