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
Episode.destroy_all
Bookmark.destroy_all

user1 = User.create(username: 'test', password: 'test')

timferriss = Podcast.create(
    podcast_name: 'Tim Ferriss: Bestselling Author, Human Guinea Pig',
    img_url: "https://is5-ssl.mzstatic.com/image/thumb/Podcasts123/v4/31/e2/0e/31e20e97-63a4-be59-5210-299e3dc903f7/mza_5431675134966086683.jpeg/600x600bb.jpg",
    rss: 'https://rss.art19.com/tim-ferriss-show'
)

portal = Podcast.create(
    podcast_name: "The Portal",
    img_url: "https://is3-ssl.mzstatic.com/image/thumb/Podcasts123/v4/18/31/27/18312707-b4ba-f8e2-fc54-67cb27dcacf4/mza_14221510211009738326.jpeg/600x600bb.jpg",
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

ep14_portal = Episode.create(
    episode_name: "14: London Tsai - The Reclusive Dean of The New Escherians",
    podcast_id: portal.id,
    description: "",
    audio: "https://dts.podtrac.com/redirect.mp3/rss.art19.com/episodes/a2cbf04a-a382-4a9f-a0eb-074c328ccd21.mp3"
)

ep13_portal = Episode.create(
    episode_name: "13: Garry Kasparov - Avoiding Zugzwang in AI and Politics ",
    podcast_id: portal.id,
    description: "",
    audio: "https://dts.podtrac.com/redirect.mp3/rss.art19.com/episodes/18c7a9b0-14e9-405e-adaa-babe36c5b96d.mp3"
)

ep398_ferriss = Episode.create(
    episode_name: "#398: Peter Attia, M.D. — Fasting, Metformin, Athletic Performance, and More",
    podcast_id: timferriss.id,
    description: "",
    audio: "https://rss.art19.com/episodes/a2c25d5a-5130-47a0-a746-f2bdcae67dc1.mp3"
)

ep397_ferriss = Episode.create(
    episode_name: "#397: Two Questions Every Entrepreneur Should Answer",
    podcast_id: timferriss.id,
    description: "",
    audio: "https://rss.art19.com/episodes/f0f6d83f-20b7-4736-8e71-a36eb1b79db1.mp3"
)

Bookmark.create(
    user_id: user1.id,
    episode_id: ep14_portal.id,
    bookmark_time: 60000
)

Bookmark.create(
    user_id: user1.id,
    episode_id: ep14_portal.id,
    bookmark_time: 120000
)

Bookmark.create(
    user_id: user1.id,
    episode_id: ep13_portal.id,
    bookmark_time: 120000
)

Bookmark.create(
    user_id: user1.id,
    episode_id: ep397_ferriss.id,
    bookmark_time: 120000
)

Bookmark.create(
    user_id: user1.id,
    episode_id: ep398_ferriss.id,
    bookmark_time: 180000
) 






# "https://is1-ssl.mzstatic.com/image/thumb/Podcasts113/v4/83/0f/7f/830f7fc6-eb1e-00d6-db2b-d3da4b82328e/mza_5561333771912948069.jpg/100x100bb.jpg"
# https://is5-ssl.mzstatic.com/image/thumb/Podcasts123/v4/31/e2/0e/31e20e97-63a4-be59-5210-299e3dc903f7/mza_5431675134966086683.jpeg/100x100bb.jpg

