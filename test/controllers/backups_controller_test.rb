require 'test_helper'

class BackupsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get backups_create_url
    assert_response :success
  end

  test "should get purge" do
    get backups_purge_url
    assert_response :success
  end

  test "should get search" do
    get backups_search_url
    assert_response :success
  end

end
