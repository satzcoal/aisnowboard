require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brand_id: @product.brand_id, category_id: @product.category_id, level: @product.level, name: @product.name, price: @product.price, style: @product.style, width: @product.width, year: @product.year } }
    end

    assert_response 201
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand_id: @product.brand_id, category_id: @product.category_id, level: @product.level, name: @product.name, price: @product.price, style: @product.style, width: @product.width, year: @product.year } }
    assert_response 200
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_response 204
  end
end
