class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city_name, :state_name, :country_name
  has_many :destinations
end
