class User < ApplicationRecord

    has_many :reviews
    belongs_to :location, class_name: "Location"

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, uniqueness: true
    validates :password_digest, presence: true
end
