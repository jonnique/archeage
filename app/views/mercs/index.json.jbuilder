json.array!(@mercs) do |merc|
  json.extract! merc, :id, :name, :price
  json.url merc_url(merc, format: :json)
end
