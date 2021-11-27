require 'test_helper'

class LeafletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaflet = leaflets(:one)
  end

  test "should get index" do
    get leaflets_url
    assert_response :success
  end

  test "should get new" do
    get new_leaflet_url
    assert_response :success
  end

  test "should create leaflet" do
    assert_difference('Leaflet.count') do
      post leaflets_url, params: { leaflet: {  } }
    end

    assert_redirected_to leaflet_url(Leaflet.last)
  end

  test "should show leaflet" do
    get leaflet_url(@leaflet)
    assert_response :success
  end

  test "should get edit" do
    get edit_leaflet_url(@leaflet)
    assert_response :success
  end

  test "should update leaflet" do
    patch leaflet_url(@leaflet), params: { leaflet: {  } }
    assert_redirected_to leaflet_url(@leaflet)
  end

  test "should destroy leaflet" do
    assert_difference('Leaflet.count', -1) do
      delete leaflet_url(@leaflet)
    end

    assert_redirected_to leaflets_url
  end
end
