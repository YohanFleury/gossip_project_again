require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accueil_index_url
    assert_response :success
  end

end
