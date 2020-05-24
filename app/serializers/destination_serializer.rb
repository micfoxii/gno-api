class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :destination_type, :location_id
  belongs_to :location
end
