require 'test_helper'

class GuylaineMassoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guylaine_masso_index_url
    assert_response :success
  end

end
