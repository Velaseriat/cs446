json.array!(@fileuploads) do |fileupload|
  json.extract! fileupload, :id, :user_id, :filename
  json.url fileupload_url(fileupload, format: :json)
end
