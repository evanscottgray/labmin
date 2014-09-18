json.array!(@credentials) do |credential|
  json.extract! credential, :id, :string, :text, :string, :string, :string
  json.url credential_url(credential, format: :json)
end
