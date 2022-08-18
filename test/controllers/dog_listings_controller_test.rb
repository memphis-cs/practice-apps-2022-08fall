require "test_helper"

class DogListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_listing = dog_listings(:one)
  end

  test "should get index" do
    get dog_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_listing_url
    assert_response :success
  end

  test "should create dog_listing" do
    assert_difference("DogListing.count") do
      post dog_listings_url, params: { dog_listing: { breed: @dog_listing.breed, name: @dog_listing.name, price: @dog_listing.price, seller_email: @dog_listing.seller_email, sex: @dog_listing.sex, weight: @dog_listing.weight } }
    end

    assert_redirected_to dog_listing_url(DogListing.last)
  end

  test "should show dog_listing" do
    get dog_listing_url(@dog_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_listing_url(@dog_listing)
    assert_response :success
  end

  test "should update dog_listing" do
    patch dog_listing_url(@dog_listing), params: { dog_listing: { breed: @dog_listing.breed, name: @dog_listing.name, price: @dog_listing.price, seller_email: @dog_listing.seller_email, sex: @dog_listing.sex, weight: @dog_listing.weight } }
    assert_redirected_to dog_listing_url(@dog_listing)
  end

  test "should destroy dog_listing" do
    assert_difference("DogListing.count", -1) do
      delete dog_listing_url(@dog_listing)
    end

    assert_redirected_to dog_listings_url
  end
end
