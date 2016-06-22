require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post categories_url, params: { category: { is_deleted: @category.is_deleted, level: @category.level, main_category_id: @category.main_category_id, name: @category.name, ori_id: @category.ori_id } }
    end

    assert_response 201
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { is_deleted: @category.is_deleted, level: @category.level, main_category_id: @category.main_category_id, name: @category.name, ori_id: @category.ori_id } }
    assert_response 200
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_response 204
  end
end
