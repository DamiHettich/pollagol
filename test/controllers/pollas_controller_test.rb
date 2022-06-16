require "test_helper"

class PollasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polla = pollas(:one)
  end

  test "should get index" do
    get pollas_url
    assert_response :success
  end

  test "should get new" do
    get new_polla_url
    assert_response :success
  end

  test "should create polla" do
    assert_difference('Polla.count') do
      post pollas_url, params: { polla: { description: @polla.description, exact_goals_points: @polla.exact_goals_points, name: @polla.name, winner_points: @polla.winner_points } }
    end

    assert_redirected_to polla_url(Polla.last)
  end

  test "should show polla" do
    get polla_url(@polla)
    assert_response :success
  end

  test "should get edit" do
    get edit_polla_url(@polla)
    assert_response :success
  end

  test "should update polla" do
    patch polla_url(@polla), params: { polla: { description: @polla.description, exact_goals_points: @polla.exact_goals_points, name: @polla.name, winner_points: @polla.winner_points } }
    assert_redirected_to polla_url(@polla)
  end

  test "should destroy polla" do
    assert_difference('Polla.count', -1) do
      delete polla_url(@polla)
    end

    assert_redirected_to pollas_url
  end
end
