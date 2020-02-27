class User < ApplicationRecord
    has_many :subscriptions
    has_many :bookmarks
    has_many :podcasts, through: :subscriptions
    has_many :episodes, through: :bookmarks


    def bookmarkedEpisodesByPodcast
        
        # returns hash of users podcasts (podcast_id is keys) 
        # w/ episodes (values) that have bookmarks
        hash = self.episodes.uniq.group_by{ |e| e.podcast_id }
        
        # returns above 'hash' into array of hashes
        podcastEpisodes = hash.map{|key, value| {key => value}}
        
        return podcastEpisodes
    end

    def bookmarksByEpisode

        # returns hash of users episodes (episode_id is keys)
        # w/ bookmarks (values)
        hash = self.bookmarks.group_by{ |b| b.episode_id }

        # returns above 'hash' into array of hashes
        episodes = hash.map{|key, value| {key => value}}

        return episodes
    end

end
