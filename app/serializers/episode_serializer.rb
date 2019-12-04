class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :episode_name, :podcast_id, :description, :audio, :bookmarks
end

