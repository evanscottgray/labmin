json.array!(@devices) do |device|
  json.extract! device, :id, :string, :text, :text
  json.url device_url(device, format: :json)
end
