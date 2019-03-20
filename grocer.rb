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
  coupons.each do |coupon|
    item_name = coupon[:item]
    if cart[item_name]
      coupon_name = item_name + " W/COUPON"
      unless cart[coupon_name]
        cart[coupon_name] = Hash.new 
        cart[coupon_name][:price] = coupon[:cost]
        cart[coupon_name][:count] = 0
        cart[coupon_name][:clearance] = cart[item_name][:clearance]
      end
      while cart[item_name][:count] >= coupon[:num]
        cart[item_name][:count] -= coupon[:num]
        cart[coupon_name][:count] += 1
      end
    end
  end
  cart
  
end

def apply_clearance(cart)
  clear_cart = cart.map do |item|
    
  end
end

def checkout(cart, coupons)
  # code here
end
