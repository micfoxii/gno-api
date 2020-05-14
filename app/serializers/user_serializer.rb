class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :about_me, :location_id
  has_many :reviews
  belongs_to :location
end
