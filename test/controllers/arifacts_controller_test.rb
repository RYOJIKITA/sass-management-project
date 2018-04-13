require 'test_helper'

class ArifactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arifact = arifacts(:one)
  end

  test "should get index" do
    get arifacts_url
    assert_response :success
  end

  test "should get new" do
    get new_arifact_url
    assert_response :success
  end

  test "should create arifact" do
    assert_difference('Arifact.count') do
      post arifacts_url, params: { arifact: { key: @arifact.key, name: @arifact.name, project_id: @arifact.project_id } }
    end

    assert_redirected_to arifact_url(Arifact.last)
  end

  test "should show arifact" do
    get arifact_url(@arifact)
    assert_response :success
  end

  test "should get edit" do
    get edit_arifact_url(@arifact)
    assert_response :success
  end

  test "should update arifact" do
    patch arifact_url(@arifact), params: { arifact: { key: @arifact.key, name: @arifact.name, project_id: @arifact.project_id } }
    assert_redirected_to arifact_url(@arifact)
  end

  test "should destroy arifact" do
    assert_difference('Arifact.count', -1) do
      delete arifact_url(@arifact)
    end

    assert_redirected_to arifacts_url
  end
end
