json.array!(@categries) do |categry|
  json.extract! categry, :id, :name, :descrpcion, :price
  json.url categry_url(categry, format: :json)
end
