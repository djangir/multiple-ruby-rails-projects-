require "application_system_test_case"

class TweatsTest < ApplicationSystemTestCase
  setup do
    @tweat = tweats(:one)
  end

  test "visiting the index" do
    visit tweats_url
    assert_selector "h1", text: "Tweats"
  end

  test "creating a Tweat" do
    visit tweats_url
    click_on "New Tweat"

    fill_in "Title", with: @tweat.title
    fill_in "Tweet", with: @tweat.tweet
    click_on "Create Tweat"

    assert_text "Tweat was successfully created"
    click_on "Back"
  end

  test "updating a Tweat" do
    visit tweats_url
    click_on "Edit", match: :first

    fill_in "Title", with: @tweat.title
    fill_in "Tweet", with: @tweat.tweet
    click_on "Update Tweat"

    assert_text "Tweat was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweat" do
    visit tweats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweat was successfully destroyed"
  end
end
