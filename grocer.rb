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
    coupon_name = item_name + " W/COUPON"
    cart[coupon_name] = Hash.new
    cart[coupon_name][:price] = coupon[:cost]
    while cart[item_name][:count] >= coupon[:num]
      cart[item_name][:count] -= coupon[:num]
    end
    cart[coupon_name][:count] = coupon[:num]
  end
  cart
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
