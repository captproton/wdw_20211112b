require "test_helper"

class FavoritesListTest < ActiveSupport::TestCase
  test "has many favorites" do
    favorites_list = FavoritesList.new
    favorite1 = favorites_list.favorites.new
    favorite2 = favorites_list.favorites.new
    assert_equal(favorites_list.favorites.length, 2)
    assert_equal(favorites_list.favorites[0], favorite1)
    assert_equal(favorites_list.favorites[1], favorite2) 
  end

  test "has favorite belong to a favorite_list" do
    favorites_list = FavoritesList.new
    favorite = Favorite.new(favorites_list: favorites_list)
    assert_equal(favorite.favorites_list, favorites_list)
  end

  test "has many attractions through favorites" do
    # attraction1     = WdwSources::TouringplansAttraction.first(2)
    favorites_list  = FavoritesList.create
    attraction1     = WdwSources::TouringplansAttraction.create(name: "Dumbo")
    favorite1       = favorites_list.favorites.create(favorable: attraction1)
    attraction2     = WdwSources::TouringplansAttraction.create(name: "Jungle Cruise")
    favorite2       = favorites_list.favorites.create(favorable: attraction2)
    assert_equal(favorites_list.attractions.length, 2)
    assert_equal(favorites_list.attractions[0], attraction1)
    assert_equal(favorites_list.attractions[1], attraction2) 
  end
  
  test "has many dining_venues through favorites" do
    favorites_list  = FavoritesList.create
    dining_venue1   = WdwSources::TouringplansDiningVenue.create(name: "super1")
    favorite1       = favorites_list.favorites.create(favorable: dining_venue1)
    dining_venue2   = WdwSources::TouringplansDiningVenue.create(name: "super2")
    favorite2       = favorites_list.favorites.create(favorable: dining_venue2)
    assert_equal(favorites_list.dining_venues.length, 2)
    assert_equal(favorites_list.dining_venues[0], dining_venue1)
    assert_equal(favorites_list.dining_venues[1], dining_venue2) 
  end
end
