# frozen_string_literal: false

$LOAD_PATH << '.'

require 'business.rb'
require 'date'

# class for users
class BuyerSeller
  # It Return list of user objects
  def get_user_details(user_details)
    user_info = ' '
    user_details.each do |details|
      details.each do |key, value|
        user_info << "#{key} => #{value} \n"
      end
    end
    user_info
  end

  # It Return single buyer name
  def get_buyer_name(user_details)
    buyer_name = ' '
    user_details.each do |details|
      details.each do |_key, _value|
        buyer_name = user_details[0][:first_name] if details[:role] == 'buyer'
      end
    end
    buyer_name
  end

  # It Return the single seller name
  def get_seller_name(user_details)
    seller_name = ' '
    user_details.each do |details|
      details.each do |_key, _value|
        seller_name = user_details[0][:first_name] if details[:role] == 'seller'
      end
    end
    seller_name
  end

  # It Return the age of the users
  def get_age(user_details)
    Date.today.year - (Date.parse user_details[:date_of_birth]).year
  end

  # It Return the all buyers
  def get_all_buyer_name(user_details)
    all_buyer_name = []
    user_details.each do |details|
      details.each do |_key, value|
        all_buyer_name << value if details[:role] == 'buyer'
      end
    end
    all_buyer_name
  end

  # It Return the all sellers
  def get_all_seller_name(user_details)
    all_seller_name = []
    user_details.each do |details|
      details.each do |_key, value|
        all_seller_name << value if details[:role] == 'seller'
      end
    end
    all_seller_name
  end

  # It Return all user objects whose first name is alex
  def find_by_name(user_details)
    user_name = []
    user_details.each do |details|
      details.each do |_key, value|
        user_name << ' ' << value if details[:first_name] == 'alex'
      end
    end
    puts "\n"
    user_name
  end
end
