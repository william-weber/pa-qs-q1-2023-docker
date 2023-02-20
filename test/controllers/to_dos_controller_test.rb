require "test_helper"

class ToDosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get to_dos_index_url
    assert_response :success
  end

  test "should get create" do
    get to_dos_create_url
    assert_response :success
  end

  test "should get update" do
    get to_dos_update_url
    assert_response :success
  end
end
