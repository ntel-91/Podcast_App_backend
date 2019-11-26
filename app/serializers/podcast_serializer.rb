class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :podcast_name, :description, :img_url, :rss
end
