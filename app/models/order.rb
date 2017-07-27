class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  def total
    order_items.inject(0) { |sum, n| sum + n.subtotal }
  end
end
