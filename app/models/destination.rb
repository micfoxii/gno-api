class Destination < ApplicationRecord

    has_many :reviews
    belongs_to :location

    validates :name, presence: true
    validates :description, presence: true
end
