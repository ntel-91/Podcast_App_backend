require 'rest-client'
require 'nokogiri'
require 'open-uri'

class PodcastsController < ApplicationController

    def podcastdata

        xml = Nokogiri::XML(open(params[:rss]))
        
        podcast_description = xml.at_css('//description').content.split("<p>").last.split("</p>").first

        podcast_episodes = xml.xpath('//item').slice(0, 25)
        episodes = podcast_episodes.map do |e| 
            ({
                title: e.children.at_css('title').content,
                pubDate: e.children.at_css('pubDate').content,
                audio: e.children.at_css('enclosure').attribute('url').value
            })
         end
        
        render json: (
            {
                description: podcast_description,
                episodes_info: episodes
            }
        )        
    end

    def create

        podcast = Podcast.create(podcast_name: params[:podcast_name], img_url: params[:podcast_image], rss: params[:rss])
        Subscription.create(podcast_id: podcast.id, user_id: params[:user_id])
        user = User.find{ |u| u.id == params[:user_id]}
        
        render json: user
    end

    def destroy
        podcast = Podcast.find(params[:id].to_i)
        subs = Subscription.find{ |u| u.podcast_id.to_s == params[:id] && u.user_id == params[:user_id]}
        Subscription.destroy(subs.id)
        Podcast.destroy(podcast.id)

        user = User.find(params[:user_id])

        render json: user


    end

end
