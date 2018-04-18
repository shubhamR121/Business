$LOAD_PATH << '.'
require 'buyer_seller_product_module.rb'
require 'business.rb'

require 'date'
class BuyerSeller
  # It Return list of user objects
  def get_user_details(user_details)
    user_info = ' '
    user_details.each do |details|
      details.each do |_key, value|
        user_info << "#{_key} => #{value} \n"
      end
    end
    user_info
  end

  # It Return single buyer name
  def get_buyer_name(user_details)
    buyer_name = ' '
    user_details.each do |details|
     details.each do |key,value|
      if details[:role] == 'buyer'
        buyer_name = user_details[0][:first_name]
      end
     end
    end
    buyer_name
  end

  # It Return the single seller name
  def get_seller_name(user_details)
    seller_name = ' '
    user_details.each do |details|
     details.each do |key,value|
      if details[:role] == 'seller'
        seller_name = user_details[0][:first_name]
      end
     end
    end
    seller_name
  end

  # It Return the age of the users
  def get_age(user_details)
    current_inst = 0
    user_age = []
    for user_object in 0...user_details.length
      birthday = (Date.parse user_details[user_object][:date_of_birth])
      age = (DateTime.now - birthday) / 365.25
      user_age[current_inst += 1] = age.to_i
    end
    user_age
  end

  # It Return the all buyers
  def get_all_buyer_name(user_details)
    all_buyer_name = ' '
    user_details.each do |details|
      details.each do |key,value|
        if value == 'buyer'
          all_buyer_name <<  details[:first_name]
        end
      end
    end
    all_buyer_name
  end

  # It Return the all sellers
  def get_all_seller_name(user_details)
    all_seller_name = ' '
    user_details.each do |details|
     details.each do |key,value|
        if value == 'seller'
          all_seller_name << details[:first_name]
        end
      end
    end
    all_seller_name
  end

  # It Return all user objects whose first name is alex
  def find_by_name(user_details)
    user_name = ' '
    user_details.each do |details|
      details.each do |key,value|
        if details[:first_name] == 'alex'
          user_name << ' ' << value
        end
      end
    end
    puts "\n"
    user_name
  end
end

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


