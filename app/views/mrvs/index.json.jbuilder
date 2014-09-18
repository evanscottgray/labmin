json.array!(@mrvs) do |mrv|
  json.extract! mrv, :id, :string, :text
  json.url mrv_url(mrv, format: :json)
end
