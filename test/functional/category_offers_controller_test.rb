require 'test_helper'

class CategoryOffersControllerTest < ActionController::TestCase
  setup do
    @category_offer = category_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_offer" do
    assert_difference('CategoryOffer.count') do
      post :create, category_offer: { name: @category_offer.name }
    end

    assert_redirected_to category_offer_path(assigns(:category_offer))
  end

  test "should show category_offer" do
    get :show, id: @category_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_offer
    assert_response :success
  end

  test "should update category_offer" do
    put :update, id: @category_offer, category_offer: { name: @category_offer.name }
    assert_redirected_to category_offer_path(assigns(:category_offer))
  end

  test "should destroy category_offer" do
    assert_difference('CategoryOffer.count', -1) do
      delete :destroy, id: @category_offer
    end

    assert_redirected_to category_offers_path
  end
end
