class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :destination_type
  belongs_to :location
end
