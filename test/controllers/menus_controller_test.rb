require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post :create, menu: { address: @menu.address, appetizer_1: @menu.appetizer_1, appetizer_2: @menu.appetizer_2, appetizer_3: @menu.appetizer_3, appetizer_4: @menu.appetizer_4, appetizer_5: @menu.appetizer_5, appetizer_6: @menu.appetizer_6, appetizer_7: @menu.appetizer_7, appetizer_8: @menu.appetizer_8, dessert_10: @menu.dessert_10, dessert_1: @menu.dessert_1, dessert_2: @menu.dessert_2, dessert_3: @menu.dessert_3, dessert_4: @menu.dessert_4, dessert_5: @menu.dessert_5, dessert_6: @menu.dessert_6, dessert_7: @menu.dessert_7, dessert_8: @menu.dessert_8, dessert_9: @menu.dessert_9, drinks_1: @menu.drinks_1, drinks_2: @menu.drinks_2, drinks_3: @menu.drinks_3, drinks_4: @menu.drinks_4, drinks_5: @menu.drinks_5, drinks_6: @menu.drinks_6, drinks_7: @menu.drinks_7, drinks_8: @menu.drinks_8, maincourse_10: @menu.maincourse_10, maincourse_11: @menu.maincourse_11, maincourse_12: @menu.maincourse_12, maincourse_13: @menu.maincourse_13, maincourse_14: @menu.maincourse_14, maincourse_15: @menu.maincourse_15, maincourse_1: @menu.maincourse_1, maincourse_2: @menu.maincourse_2, maincourse_3: @menu.maincourse_3, maincourse_4: @menu.maincourse_4, maincourse_5: @menu.maincourse_5, maincourse_6: @menu.maincourse_6, maincourse_7: @menu.maincourse_7, maincourse_8: @menu.maincourse_8, maincourse_9: @menu.maincourse_9, picture: @menu.picture, title: @menu.title }
    end

    assert_redirected_to menu_path(assigns(:menu))
  end

  test "should show menu" do
    get :show, id: @menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu
    assert_response :success
  end

  test "should update menu" do
    patch :update, id: @menu, menu: { address: @menu.address, appetizer_1: @menu.appetizer_1, appetizer_2: @menu.appetizer_2, appetizer_3: @menu.appetizer_3, appetizer_4: @menu.appetizer_4, appetizer_5: @menu.appetizer_5, appetizer_6: @menu.appetizer_6, appetizer_7: @menu.appetizer_7, appetizer_8: @menu.appetizer_8, dessert_10: @menu.dessert_10, dessert_1: @menu.dessert_1, dessert_2: @menu.dessert_2, dessert_3: @menu.dessert_3, dessert_4: @menu.dessert_4, dessert_5: @menu.dessert_5, dessert_6: @menu.dessert_6, dessert_7: @menu.dessert_7, dessert_8: @menu.dessert_8, dessert_9: @menu.dessert_9, drinks_1: @menu.drinks_1, drinks_2: @menu.drinks_2, drinks_3: @menu.drinks_3, drinks_4: @menu.drinks_4, drinks_5: @menu.drinks_5, drinks_6: @menu.drinks_6, drinks_7: @menu.drinks_7, drinks_8: @menu.drinks_8, maincourse_10: @menu.maincourse_10, maincourse_11: @menu.maincourse_11, maincourse_12: @menu.maincourse_12, maincourse_13: @menu.maincourse_13, maincourse_14: @menu.maincourse_14, maincourse_15: @menu.maincourse_15, maincourse_1: @menu.maincourse_1, maincourse_2: @menu.maincourse_2, maincourse_3: @menu.maincourse_3, maincourse_4: @menu.maincourse_4, maincourse_5: @menu.maincourse_5, maincourse_6: @menu.maincourse_6, maincourse_7: @menu.maincourse_7, maincourse_8: @menu.maincourse_8, maincourse_9: @menu.maincourse_9, picture: @menu.picture, title: @menu.title }
    assert_redirected_to menu_path(assigns(:menu))
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete :destroy, id: @menu
    end

    assert_redirected_to menus_path
  end
end
