class SessionsController < ApplicationController

    def create
        
        user = User.find_by(username: params[:username])
        if user
            session[:user] = user
            
            userId = user.id
            podcasts = user.podcasts
            episodes = user.bookmarkedEpisodesByPodcast
            bookmarks = user.bookmarksByEpisode
            
            
            render json: ({
                userId: userId,
                podcasts: podcasts,
                episodes: episodes,
                bookmarks: bookmarks
            })
        else
            user = User.create(username: params[:username])
            render json ({userId: user.id})
        end
        
        
        
        
    end

end
