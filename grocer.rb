def consolidate_cart(cart)
  new_cart = Hash.new
  cart.each do |item|
    item_name = item.keys[0]
    if new_cart.has_key?(item_name) 
      new_cart[item_name][:count] += 1 
    else
      new_cart[item_name] = item[item_name]
      new_cart[item_name][:count] = 1 
    end
  end
  new_cart
end



def apply_coupons(cart, coupons)
  item_name = coupons[0][:item]
  coupon_name = item_name + " W/COUPON"
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
