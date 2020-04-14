require "application_system_test_case"

class ExplanatoriesTest < ApplicationSystemTestCase
  setup do
    @explanatory = explanatories(:one)
  end

  test "visiting the index" do
    visit explanatories_url
    assert_selector "h1", text: "Explanatories"
  end

  test "creating a Explanatory" do
    visit explanatories_url
    click_on "New Explanatory"

    click_on "Create Explanatory"

    assert_text "Explanatory was successfully created"
    click_on "Back"
  end

  test "updating a Explanatory" do
    visit explanatories_url
    click_on "Edit", match: :first

    click_on "Update Explanatory"

    assert_text "Explanatory was successfully updated"
    click_on "Back"
  end

  test "destroying a Explanatory" do
    visit explanatories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Explanatory was successfully destroyed"
  end
end
