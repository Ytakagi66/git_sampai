require 'test_helper'

class ExplanatoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @explanatory = explanatories(:one)
  end

  test "should get index" do
    get explanatories_url
    assert_response :success
  end

  test "should get new" do
    get new_explanatory_url
    assert_response :success
  end

  test "should create explanatory" do
    assert_difference('Explanatory.count') do
      post explanatories_url, params: { explanatory: {  } }
    end

    assert_redirected_to explanatory_url(Explanatory.last)
  end

  test "should show explanatory" do
    get explanatory_url(@explanatory)
    assert_response :success
  end

  test "should get edit" do
    get edit_explanatory_url(@explanatory)
    assert_response :success
  end

  test "should update explanatory" do
    patch explanatory_url(@explanatory), params: { explanatory: {  } }
    assert_redirected_to explanatory_url(@explanatory)
  end

  test "should destroy explanatory" do
    assert_difference('Explanatory.count', -1) do
      delete explanatory_url(@explanatory)
    end

    assert_redirected_to explanatories_url
  end
end
