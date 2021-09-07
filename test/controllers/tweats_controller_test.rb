require "test_helper"

class TweatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweat = tweats(:one)
  end

  test "should get index" do
    get tweats_url
    assert_response :success
  end

  test "should get new" do
    get new_tweat_url
    assert_response :success
  end

  test "should create tweat" do
    assert_difference('Tweat.count') do
      post tweats_url, params: { tweat: { title: @tweat.title, tweet: @tweat.tweet } }
    end

    assert_redirected_to tweat_url(Tweat.last)
  end

  test "should show tweat" do
    get tweat_url(@tweat)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweat_url(@tweat)
    assert_response :success
  end

  test "should update tweat" do
    patch tweat_url(@tweat), params: { tweat: { title: @tweat.title, tweet: @tweat.tweet } }
    assert_redirected_to tweat_url(@tweat)
  end

  test "should destroy tweat" do
    assert_difference('Tweat.count', -1) do
      delete tweat_url(@tweat)
    end

    assert_redirected_to tweats_url
  end
end
