class FavoritesList < ApplicationRecord
    has_many :favorites
    has_many :attractions, through: :favorites, source: :favorable, source_type: 'WdwSources::TouringplansAttraction'
    has_many :dining_venues, through: :favorites, source: :favorable, source_type: 'WdwSources::TouringplansDiningVenue'
end
