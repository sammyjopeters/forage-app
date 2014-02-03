require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { amount: @listing.amount, cost: @listing.cost, description: @listing.description, expiry: @listing.expiry, goods_type: @listing.goods_type, location: @listing.location, location_state: @listing.location_state, pictures: @listing.pictures, sold: @listing.sold, sold_to: @listing.sold_to, transaction_type: @listing.transaction_type, user_id: @listing.user_id }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { amount: @listing.amount, cost: @listing.cost, description: @listing.description, expiry: @listing.expiry, goods_type: @listing.goods_type, location: @listing.location, location_state: @listing.location_state, pictures: @listing.pictures, sold: @listing.sold, sold_to: @listing.sold_to, transaction_type: @listing.transaction_type, user_id: @listing.user_id }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
