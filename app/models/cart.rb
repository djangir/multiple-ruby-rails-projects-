class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def add_instrument(instrument)
  	current_item = cart_items.find_by(instrument_id: instrument.id)
  	if current_item
  	  current_item.increment(:quantity)
  	else
  	  current_item = cart_items.build(instrument_id: instrument.id)
  	end
  	current_item
  end

  def total_price
    cart_items.to_a.sum { |item| item.total_price }
  end
end
 