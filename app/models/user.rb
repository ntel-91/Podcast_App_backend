class User < ApplicationRecord
    has_many :subscriptions
    has_many :bookmarks
    has_many :podcasts, through: :subscriptions
    has_many :episodes, through: :bookmarks

    def bookmarkedEpisodesByPodcast
        hash = self.episodes.uniq.group_by{ |e| e.podcast_id }
        podcastEpisodes = hash.map{|key, value| {key => value}}
        return podcastEpisodes
    end

    def bookmarksByEpisode
        hash = self.bookmarks.group_by{ |b| b.episode_id }
        episodes = hash.map{|key, value| {key => value}}
        return episodes
    end

end
