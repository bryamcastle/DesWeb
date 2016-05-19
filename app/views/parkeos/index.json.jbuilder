json.array!(@parkeos) do |parkeo|
  json.extract! parkeo, :id, :codigo, :description
  json.url parkeo_url(parkeo, format: :json)
end
