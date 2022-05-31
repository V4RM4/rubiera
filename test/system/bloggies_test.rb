require "application_system_test_case"

class BloggiesTest < ApplicationSystemTestCase
  setup do
    @bloggy = bloggies(:one)
  end

  test "visiting the index" do
    visit bloggies_url
    assert_selector "h1", text: "Bloggies"
  end

  test "should create bloggy" do
    visit bloggies_url
    click_on "New bloggy"

    fill_in "Content", with: @bloggy.content
    fill_in "Title", with: @bloggy.title
    click_on "Create Bloggy"

    assert_text "Bloggy was successfully created"
    click_on "Back"
  end

  test "should update Bloggy" do
    visit bloggy_url(@bloggy)
    click_on "Edit this bloggy", match: :first

    fill_in "Content", with: @bloggy.content
    fill_in "Title", with: @bloggy.title
    click_on "Update Bloggy"

    assert_text "Bloggy was successfully updated"
    click_on "Back"
  end

  test "should destroy Bloggy" do
    visit bloggy_url(@bloggy)
    click_on "Destroy this bloggy", match: :first

    assert_text "Bloggy was successfully destroyed"
  end
end
