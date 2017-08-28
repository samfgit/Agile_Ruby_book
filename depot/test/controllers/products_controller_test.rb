require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
      :title => 'Lorem Ipsum',
      :description => 'Wibbles are fun!',
      :image_url => 'lorem.jpg',
      :price => 19.95
    }
  end

  test "should get index" do
    get products_url
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
    # assert_select '#no_products', 1
    # assert_select '#true_p', 1
    assert_select '#false_p', 1
    # assert_select '#main h1', 1
    # assert_select 'h3', :minimum => 30
    # assert_select '.entry', 3
    # assert_select 'h3', 'Programming Ruby 1.9'
    # assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, :product => @update
    end

    assert_redirected_to product_url(Product.find_by(:title=>@update[:title]))
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), :product => @update
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end