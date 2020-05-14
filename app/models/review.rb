class Review < ApplicationRecord

    belongs_to :user, foreign_key: :user_id, class_name: "User"
    belongs_to :destination, foreign_key: :destination_id, class_name: "Destination"
end
