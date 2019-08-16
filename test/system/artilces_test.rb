require "application_system_test_case"

class ArtilcesTest < ApplicationSystemTestCase
  setup do
    @artilce = artilces(:one)
  end

  test "visiting the index" do
    visit artilces_url
    assert_selector "h1", text: "Artilces"
  end

  test "creating a Artilce" do
    visit artilces_url
    click_on "New Artilce"

    fill_in "Text", with: @artilce.text
    fill_in "Title", with: @artilce.title
    click_on "Create Artilce"

    assert_text "Artilce was successfully created"
    click_on "Back"
  end

  test "updating a Artilce" do
    visit artilces_url
    click_on "Edit", match: :first

    fill_in "Text", with: @artilce.text
    fill_in "Title", with: @artilce.title
    click_on "Update Artilce"

    assert_text "Artilce was successfully updated"
    click_on "Back"
  end

  test "destroying a Artilce" do
    visit artilces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artilce was successfully destroyed"
  end
end
