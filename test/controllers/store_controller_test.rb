require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'section.section', minimum: 3
    assert_select 'h4.title', minimum: 3
    assert_select 'h6.subtitle', minimum: 3
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
