class Podcast < ApplicationRecord
    has_many :subscriptions
    has_many :episodes
    has_many :users, through: :subscriptions
end
