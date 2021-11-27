require "application_system_test_case"

class LeafletsTest < ApplicationSystemTestCase
  setup do
    @leaflet = leaflets(:one)
  end

  test "visiting the index" do
    visit leaflets_url
    assert_selector "h1", text: "Leaflets"
  end

  test "creating a Leaflet" do
    visit leaflets_url
    click_on "New Leaflet"

    click_on "Create Leaflet"

    assert_text "Leaflet was successfully created"
    click_on "Back"
  end

  test "updating a Leaflet" do
    visit leaflets_url
    click_on "Edit", match: :first

    click_on "Update Leaflet"

    assert_text "Leaflet was successfully updated"
    click_on "Back"
  end

  test "destroying a Leaflet" do
    visit leaflets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leaflet was successfully destroyed"
  end
end
