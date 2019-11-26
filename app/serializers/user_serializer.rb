class UserSerializer < ActiveModel::Serializer
  has_many :podcasts
  attributes :id, :username, :password, :podcasts
end
