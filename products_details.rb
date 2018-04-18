$LOAD_PATH << '.'
require 'buyer_seller_product_module.rb'
require 'business.rb'
require 'buyer_seller_product_scenario.rb'

class Product
  # It Return the product objects
  def get_product_details(product)
    product_info = ' '
    product.each do |details|
      details.each do |_key, value|
        product_info << "#{_key} => #{value}\n"
      end
    end
    product_info
  end
end