# frozen_string_literal: true

$LOAD_PATH << '.'
require 'users_products_details.rb'
require 'users_details.rb'
require 'products_details.rb'

user_obj = BuyerSeller.new
product_obj = Product.new
user_details = DataSource.new.set_users_details
product_details = DataSource.new.set_products_details
puts user_obj.get_user_details(user_details)
puts product_obj.get_product_details(product_details)
puts user_obj.get_buyer_name(user_details)
puts user_obj.get_seller_name(user_details)
puts user_obj.get_age(user_details[1])
puts user_obj.get_all_buyer_name(user_details)
puts user_obj.get_all_seller_name(user_details)
puts user_obj.find_by_name(user_details)
