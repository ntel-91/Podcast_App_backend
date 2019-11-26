# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Subscription.destroy_all
Podcast.destroy_all

user1 = User.create(username: 'test-user-1', password: 'test-password-1')

timferriss = Podcast.create(
    podcast_name: 'Tim Ferriss: Bestselling Author, Human Guinea Pig',
    img_url: 'https://is5-ssl.mzstatic.com/image/thumb/Podcasts123/v4/31/e2/0e/31e20e97-63a4-be59-5210-299e3dc903f7/mza_5431675134966086683.jpeg/100x100bb.jpg',
    rss: 'https://rss.art19.com/tim-ferriss-show'
)

portal = Podcast.create(
    podcast_name: "The Portal",
    img_url: "https://is5-ssl.mzstatic.com/image/thumb/Podcasts113/v4/16/e6/31/16e631fe-d2cb-7ca0-f1b2-3bbc07b0c293/mza_1989164661815778920.jpeg/100x100bb.jpg",
    rss: 'https://rss.art19.com/the-portal'
)

Subscription.create(
    user_id: user1.id,
    podcast_id: timferriss.id
)

Subscription.create(
    user_id: user1.id,
    podcast_id: portal.id
)

# "https://is1-ssl.mzstatic.com/image/thumb/Podcasts113/v4/83/0f/7f/830f7fc6-eb1e-00d6-db2b-d3da4b82328e/mza_5561333771912948069.jpg/100x100bb.jpg"
# https://is5-ssl.mzstatic.com/image/thumb/Podcasts123/v4/31/e2/0e/31e20e97-63a4-be59-5210-299e3dc903f7/mza_5431675134966086683.jpeg/100x100bb.jpg

