class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :episode_id, :bookmark_time, :created_at
end
