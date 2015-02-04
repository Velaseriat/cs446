json.array!(@soldiers) do |soldier|
  json.extract! soldier, :id, :first_name, :last_name, :atk, :def
  json.url soldier_url(soldier, format: :json)
end
