class Destination < ApplicationRecord

    has_many :reviews
    belongs_to :location
    
end
