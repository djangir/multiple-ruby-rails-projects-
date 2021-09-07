class Order < ApplicationRecord
   validates :name, :address, :email, presence: true
   has_many :line_items, dependent: :destroy
   
   enum pay_type: {
   "Check" => 0,
   "Credit card" => 1,
   "Purchase order" => 2
   }

   def add_line_items_from_cart(cart)
     cart.line_items.each do |item|
       item.cart_id = nil
       line_items << item
     end
   end

end
