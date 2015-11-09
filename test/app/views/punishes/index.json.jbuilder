json.array!(@punishes) do |punish|
  json.extract! punish, :id, :name, :faults, :fault_data, :status, :complete_data
  json.url punish_url(punish, format: :json)
end
