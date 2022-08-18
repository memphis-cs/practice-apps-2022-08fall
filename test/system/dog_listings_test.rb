require "application_system_test_case"

class DogListingsTest < ApplicationSystemTestCase
  setup do
    @dog_listing = dog_listings(:one)
  end

  test "visiting the index" do
    visit dog_listings_url
    assert_selector "h1", text: "Dog listings"
  end

  test "should create dog listing" do
    visit dog_listings_url
    click_on "New dog listing"

    fill_in "Breed", with: @dog_listing.breed
    fill_in "Name", with: @dog_listing.name
    fill_in "Price", with: @dog_listing.price
    fill_in "Seller email", with: @dog_listing.seller_email
    fill_in "Sex", with: @dog_listing.sex
    fill_in "Weight", with: @dog_listing.weight
    click_on "Create Dog listing"

    assert_text "Dog listing was successfully created"
    click_on "Back"
  end

  test "should update Dog listing" do
    visit dog_listing_url(@dog_listing)
    click_on "Edit this dog listing", match: :first

    fill_in "Breed", with: @dog_listing.breed
    fill_in "Name", with: @dog_listing.name
    fill_in "Price", with: @dog_listing.price
    fill_in "Seller email", with: @dog_listing.seller_email
    fill_in "Sex", with: @dog_listing.sex
    fill_in "Weight", with: @dog_listing.weight
    click_on "Update Dog listing"

    assert_text "Dog listing was successfully updated"
    click_on "Back"
  end

  test "should destroy Dog listing" do
    visit dog_listing_url(@dog_listing)
    click_on "Destroy this dog listing", match: :first

    assert_text "Dog listing was successfully destroyed"
  end
end
