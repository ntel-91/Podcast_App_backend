class BookmarksController < ApplicationController
    def create
        episode = Episode.find{|e| e.episode_name == params[:episode][:episode_name]}
        user = User.find{ |u| u.id == params[:userId]}
        
        if (episode)
            Bookmark.create(user_id: params[:userId], episode_id: episode.id, bookmark_time: params[:bookmarkTime])
            userEpisodes = user.bookmarkedEpisodesByPodcast
            userBookmarks = user.bookmarksByEpisode
            episode_bookmarks = user.bookmarks.select{|b| b.episode_id == episode.id}
            
            render json: ({
                episode_bookmarks: episode_bookmarks,
                episodes: userEpisodes,
                bookmarks: userBookmarks
            })
            # render json: episode_bookmarks
        else 
            podcast = Podcast.find{|p| p.podcast_name == params[:podcast][:collectionName]}
            episode = Episode.create(episode_name: params[:episode][:episode_name], podcast_id: podcast.id, audio: params[:episode][:audio])
            Bookmark.create(user_id: params[:userId], episode_id: episode.id, bookmark_time: params[:bookmarkTime])
        
            episode_bookmarks = user.bookmarks.select{|b| b.episode_id == episode.id}
            userEpisodes = user.bookmarkedEpisodesByPodcast
            userBookmarks = user.bookmarksByEpisode
            
            render json: ({
                episode_bookmarks: episode_bookmarks,
                episodes: userEpisodes,
                bookmarks: userBookmarks
            })
            # render json: episode_bookmarks
        
        end

    end

    def episodebookmarks 
        
        episode = Episode.find{|e| e.episode_name == params[:episode][:episode_name]}
        user = User.find{ |u| u.id == params[:userId]}
        
        if (episode)
            episode_bookmarks = user.bookmarks.select{|b| b.episode_id == episode.id}
            render json: episode_bookmarks
        else   
            render json: []
        end
    end



end
