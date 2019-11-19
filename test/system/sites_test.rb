require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "creating a Site" do
    visit sites_url
    click_on "New Site"

    fill_in "Address", with: @site.address
    fill_in "City", with: @site.city
    fill_in "Name", with: @site.name
    fill_in "Reference", with: @site.reference
    fill_in "Zipcode", with: @site.zipcode
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "updating a Site" do
    visit sites_url
    click_on "Edit", match: :first

    fill_in "Address", with: @site.address
    fill_in "City", with: @site.city
    fill_in "Name", with: @site.name
    fill_in "Reference", with: @site.reference
    fill_in "Zipcode", with: @site.zipcode
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "destroying a Site" do
    visit sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site was successfully destroyed"
  end
end
