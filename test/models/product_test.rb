require 'test_helper'

class ProductTest < ActiveSupport::TestCase

   fixtures :products
   #========================Fixtur Test ====================
   test "Product is not valid wihtout a unique title" do
      product = Product.new(title: "Progrmming Ruby",
                        description: "dddddd",
                        price: 1,
                        image_url: "logo.png"  
                 )  

                 
     assert product.invalid?
     assert_equal ["Title has already been taken"], 
        [product.errors[:title]]
   end 
   
   #Requiredment for test nedd to check duplicate product title
   #Result: should return : hass already been taken
   #        becuase product is allready exists.            
 #========================================================

   # test "should attributes must not be empty..." do
   #    product = Product.new
   #    assert product.invalid?
   #    assert product.errors[:title].any?
   #    assert product.errors[:description].any?
   #    assert product.errors[:price].any?
   #    assert product.errors[:image_url].any?
   # end

   # test "price must be postive.." do
   #    product  =  Product.new(title:       "test",
   #                            description: "yyyy",
   #                            price: 1,
   #                            image_url:   image_url)

   # def new_product(image_url) 
   #    product  =  Product.new(title:       "My Book title for Test",
   #                            description: "yyyy",
   #                            price: 1,
   #                            image_url:   image_url)
   # end   

   # test "image_url" do
   #    ok = %w{ logo.png logo.jpg logo.png}
   #    bad = %w{ logo.doc logo.gif/more logo.gif.more}
      
   #    ok.each do |image_url|
   #      assert new_product(image_url).valid?, 
   #          "#{image_url} shouldn't be invalid"
   #    end
      
   #    bad.each do |image_url|
   #      assert new_product(image_url).invalid?,
   #          "#{image_url} shouldn't be valid"
   #    end
   # end

   #case 1 product price less than 0
   # product.price=1  #-1
   # assert product.invalid?
   # assert_equal ["0 - must be grater than or equal to  0.01"], 
   #       product.errors[:price]
   #case 2 product price is  0
   # product.price=0
   # assert product.invalid?
   # assert_equal ["1 - must be grater than or equal to  0.01"], 
   #       product.errors[:price]
   
   #case 3 product price is 1 
   # product.price=1
   # assert product.invalid? 
end            
