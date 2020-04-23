require 'test_helper'

class ShrinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shrine = shrines(:one)
  end

  test "should get index" do
    get shrines_url
    assert_response :success
  end

  test "should get new" do
    get new_shrine_url
    assert_response :success
  end

  test "should create shrine" do
    assert_difference('Shrine.count') do
      post shrines_url, params: { shrine: { adress: @shrine.adress, article: @shrine.article, god: @shrine.god, goshuin: @shrine.goshuin, title: @shrine.title, url: @shrine.url } }
    end

    assert_redirected_to shrine_url(Shrine.last)
  end

  test "should show shrine" do
    get shrine_url(@shrine)
    assert_response :success
  end

  test "should get edit" do
    get edit_shrine_url(@shrine)
    assert_response :success
  end

  test "should update shrine" do
    patch shrine_url(@shrine), params: { shrine: { adress: @shrine.adress, article: @shrine.article, god: @shrine.god, goshuin: @shrine.goshuin, title: @shrine.title, url: @shrine.url } }
    assert_redirected_to shrine_url(@shrine)
  end

  test "should destroy shrine" do
    assert_difference('Shrine.count', -1) do
      delete shrine_url(@shrine)
    end

    assert_redirected_to shrines_url
  end
end
