class Destination < ApplicationRecord

    has_many :reviews
    belongs_to :location, class_name: "Location"

    # validates :name, presence: true
    # validates :description, presence: true
end
