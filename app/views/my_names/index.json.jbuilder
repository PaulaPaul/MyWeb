json.array!(@my_names) do |my_name|
  json.extract! my_name, :id, :name, :color
  json.url my_name_url(my_name, format: :json)
end
