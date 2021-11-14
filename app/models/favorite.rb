class Favorite < ApplicationRecord
  belongs_to :favorable, polymorphic: true
  belongs_to :favorites_list
end
