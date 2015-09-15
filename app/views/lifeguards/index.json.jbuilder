json.array!(@lifeguards) do |lifeguard|
  json.extract! lifeguard, :id, :tan, :spf
  json.url lifeguard_url(lifeguard, format: :json)
end
