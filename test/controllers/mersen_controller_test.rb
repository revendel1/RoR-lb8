require 'test_helper'

class MersenControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get mersen_input_url
    assert_response :success
  end

  test "should get view" do
    get mersen_view_url
    assert_response :success
  end

  test "should get count=4 with value=32" do
    get mersen_view_url, params: {val: 32}
    assert_equal assigns[:count], 4
  end

  test "should get count=5 with value=1000" do
    get mersen_view_url, params: {val: 1000}
    assert_equal assigns[:count], 5
  end

  test "should get count=0 with value<=0" do
    value = -32
    get mersen_view_url, params: {val: value}
    assert_equal assigns[:count], 0
  end

  test "should get count=0 with string-value" do
    value = "Something"
    get mersen_view_url, params: {val: value}
    assert_equal assigns[:count], 0
  end
  
end
