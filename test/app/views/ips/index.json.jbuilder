json.array!(@ips) do |ip|
  json.extract! ip, :id, :user, :ip, :description
  json.url ip_url(ip, format: :json)
end
