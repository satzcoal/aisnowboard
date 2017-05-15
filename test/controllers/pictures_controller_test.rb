require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get pictures_url
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post pictures_url, params: { picture: { is_deleted: @picture.is_deleted, is_valid: @picture.is_valid, ori_id: @picture.ori_id, product_id: @picture.product_id, s_index: @picture.s_index, url: @picture.url } }
    end

    assert_response 201
  end

  test "should show picture" do
    get picture_url(@picture)
    assert_response :success
  end

  test "should update picture" do
    patch picture_url(@picture), params: { picture: { is_deleted: @picture.is_deleted, is_valid: @picture.is_valid, ori_id: @picture.ori_id, product_id: @picture.product_id, s_index: @picture.s_index, url: @picture.url } }
    assert_response 200
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete picture_url(@picture)
    end

    assert_response 204
  end
end
