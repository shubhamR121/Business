# frozen_string_literal: false

$LOAD_PATH << '.'

require 'business.rb'

# class for products
class Product
  # It Return the product objects
  def get_product_details(product)
    product_info = []
    product.each do |details|
      details.each do |key, value|
        product_info << "#{key} => #{value}\n"
      end
    end
    product_info
  end
end
