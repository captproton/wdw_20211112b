require "test_helper"

class FavoriteTest < ActiveSupport::TestCase
  test "can belong to either a attraction or a dining_venue" do
    favorites_list = FavoritesList.new
    attraction = WdwSources::TouringplansAttraction.first

    favorite1 = Favorite.new(favorable: attraction)
    dining_venue = WdwSources::TouringplansDiningVenue.first
    favorite2 = Favorite.new(favorable: dining_venue)
    assert_equal(favorite1.favorable, attraction)
    assert_equal(favorite2.favorable, dining_venue)
  end
end
