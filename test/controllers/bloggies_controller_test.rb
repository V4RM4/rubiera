require "test_helper"

class BloggiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bloggy = bloggies(:one)
  end

  test "should get index" do
    get bloggies_url
    assert_response :success
  end

  test "should get new" do
    get new_bloggy_url
    assert_response :success
  end

  test "should create bloggy" do
    assert_difference("Bloggy.count") do
      post bloggies_url, params: { bloggy: { content: @bloggy.content, title: @bloggy.title } }
    end

    assert_redirected_to bloggy_url(Bloggy.last)
  end

  test "should show bloggy" do
    get bloggy_url(@bloggy)
    assert_response :success
  end

  test "should get edit" do
    get edit_bloggy_url(@bloggy)
    assert_response :success
  end

  test "should update bloggy" do
    patch bloggy_url(@bloggy), params: { bloggy: { content: @bloggy.content, title: @bloggy.title } }
    assert_redirected_to bloggy_url(@bloggy)
  end

  test "should destroy bloggy" do
    assert_difference("Bloggy.count", -1) do
      delete bloggy_url(@bloggy)
    end

    assert_redirected_to bloggies_url
  end
end
