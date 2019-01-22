require "application_system_test_case"

class KudosTest < ApplicationSystemTestCase
  setup do
    @kudo = kudos(:one)
  end

  test "visiting the index" do
    visit kudos_url
    assert_selector "h1", text: "Kudos"
  end

  test "creating a Kudo" do
    visit kudos_url
    click_on "New Kudo"

    fill_in "Message", with: @kudo.message
    fill_in "Receiver", with: @kudo.receiver_id
    fill_in "Sender", with: @kudo.sender_id
    click_on "Create Kudo"

    assert_text "Kudo was successfully created"
    click_on "Back"
  end

  test "updating a Kudo" do
    visit kudos_url
    click_on "Edit", match: :first

    fill_in "Message", with: @kudo.message
    fill_in "Receiver", with: @kudo.receiver_id
    fill_in "Sender", with: @kudo.sender_id
    click_on "Update Kudo"

    assert_text "Kudo was successfully updated"
    click_on "Back"
  end

  test "destroying a Kudo" do
    visit kudos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kudo was successfully destroyed"
  end
end
