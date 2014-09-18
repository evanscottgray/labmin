json.array!(@console_servers) do |console_server|
  json.extract! console_server, :id, :string, :text, :integer, :integer
  json.url console_server_url(console_server, format: :json)
end
