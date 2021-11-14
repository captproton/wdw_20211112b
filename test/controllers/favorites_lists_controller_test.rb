require "test_helper"

class FavoritesListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorites_list = favorites_lists(:one)
  end

  test "should get index" do
    get favorites_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_favorites_list_url
    assert_response :success
  end

  test "should create favorites_list" do
    assert_difference('FavoritesList.count') do
      post favorites_lists_url, params: { favorites_list: { name: @favorites_list.name } }
    end

    assert_redirected_to favorites_list_url(FavoritesList.last)
  end

  test "should show favorites_list" do
    get favorites_list_url(@favorites_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorites_list_url(@favorites_list)
    assert_response :success
  end

  test "should update favorites_list" do
    patch favorites_list_url(@favorites_list), params: { favorites_list: { name: @favorites_list.name } }
    assert_redirected_to favorites_list_url(@favorites_list)
  end

  test "should destroy favorites_list" do
    assert_difference('FavoritesList.count', -1) do
      delete favorites_list_url(@favorites_list)
    end

    assert_redirected_to favorites_lists_url
  end
end
