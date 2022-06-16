require "application_system_test_case"

class PollasTest < ApplicationSystemTestCase
  setup do
    @polla = pollas(:one)
  end

  test "visiting the index" do
    visit pollas_url
    assert_selector "h1", text: "Pollas"
  end

  test "creating a Polla" do
    visit pollas_url
    click_on "New Polla"

    fill_in "Description", with: @polla.description
    fill_in "Exact goals points", with: @polla.exact_goals_points
    fill_in "Name", with: @polla.name
    fill_in "Winner points", with: @polla.winner_points
    click_on "Create Polla"

    assert_text "Polla was successfully created"
    click_on "Back"
  end

  test "updating a Polla" do
    visit pollas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @polla.description
    fill_in "Exact goals points", with: @polla.exact_goals_points
    fill_in "Name", with: @polla.name
    fill_in "Winner points", with: @polla.winner_points
    click_on "Update Polla"

    assert_text "Polla was successfully updated"
    click_on "Back"
  end

  test "destroying a Polla" do
    visit pollas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Polla was successfully destroyed"
  end
end
