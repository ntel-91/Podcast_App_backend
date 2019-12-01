require 'nokogiri'
require 'open-uri'

# https://rss.art19.com/tim-ferriss-show
# http://joeroganexp.joerogan.libsynpro.com/rss
# http://feeds.feedburner.com/
# https://helpmybusiness.podbean.com/feed.xml
# https://rss.art19.com/the-portal

xml = Nokogiri::XML(open('https://rss.art19.com/the-portal'))

array = xml.xpath('//item')
# # print array.map { |e| e.children.at_css('enclosure').attribute('url').value }
# print array.map { |e| e.children.at_css('title').content }
puts array
# puts array.map { |e| e.children.at_css('*[local-name()='itunes:title'') }




# xml = Nokogiri::XML(open('https://rss.art19.com/the-portal'))
# podcast_episodes = xml.xpath('//item').slice(0, 25)

# episodes = podcast_episodes.map do |e| 
#     ({
#         # title: e.children.at_css('title').content,
#         # pubDate: e.children.at_css('pubDate').content,
#         # audio: e.children.at_css('enclosure').attribute('url').value
#         # desc: e.children.at_css('description').content.split("  <p>").last.split("</p>\\n").first
#         # use regex
#     })
#  end

#  puts episodes











###############################################

# PODCAST DESCRIPTION
# description = xml.at_css('//description')
# puts description.content

# EPISODE DETAIL #############################
# EPISODE DATE
# array = xml.xpath('//item')
# puts array.map { |e| e.children.at_css('pubDate').content }

# EPISODE TITLE
# array = xml.xpath('//item')
# puts array.map { |e| e.children.at_css('title').content }

# array.map do |e| 
#     puts ({
#         title: e.children.at_css('title').content,
#         pubDate: e.children.at_css('pubDate').content
#     })
# end

# desc = xml.xpath('//description').first.content
# puts desc.split("<p>").last.split("</p>")
# array = xml.xpath('//item').slice(0, 25)
