class Location < ApplicationRecord

    has_many :destinations
    has_many :local_guides, foreign_key: :location_id, class_name: "User"

    
end
