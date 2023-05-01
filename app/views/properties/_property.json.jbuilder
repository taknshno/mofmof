json.extract! property, :id, :property_name, :rent, :address, :age, :remarks, :created_at, :updated_at, nearly_stations_attributes: [:line_name, :station_name, :on_foot_time]
json.url property_url(property, format: :json)
