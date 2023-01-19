require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def new_product() 
    Product.new(
      title: "Unit test title",
      description: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
      image_url: "zzzz.jpg",
      price: 1
    )
  end

  test "product attributes must not be empty" do 
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do 
    product = new_product()
    bad_values = [-1, 0]
    good_values = [1, 2]
   
    bad_values.each do |value|
      product.price = value 
      assert product.invalid?
      assert_equal ["price can`t be empty"],
      product.errors[:price]
    end

    good_values.each do |value|
      product.price = value 
      assert product.valid?
    end

  end

  test "product title must be grater than 3 characters" do
    product = new_product()

    bad_values = ['a', 'b']

    bad_values.each do |value|
      product.title = value 
      assert product.invalid?
      assert_equal ["is too short (minimum is 3 characters)"],
      product.errors[:title]
    end

    product.title = 'abc'
    assert product.valid?
  end

  test "product description must be grater than 10 characters" do
    product = new_product()

    bad_values = ['aadsaddd', 'aadsadddd']

    bad_values.each do |value|
      product.description = value 
      assert product.invalid?
      assert_equal ["is too short (minimum is 10 characters)"],
      product.errors[:description]
    end

    product.description = 'aadsaddddd'
    assert product.valid?
  end
    
  test "image url" do
    product = new_product()

    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
    http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |image_url|
      product.image_url = image_url
      assert product.valid?,
      "#{image_url} shouldn't be invalid"
    end
  end

end
