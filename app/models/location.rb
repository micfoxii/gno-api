class Location < ApplicationRecord

    has_many :destinations, foreign_key: :location_id, class_name: "Destination"
    has_many :local_guides, foreign_key: :location_id, class_name: "User"
    # has_many :reviews, foreign_key: :location_id, class_name: "Reviews"

    
end
