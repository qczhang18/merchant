# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :integer
#

class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, required: false
  belongs_to :address

  def total
    order_items.inject(0) { |sum, n| sum + n.subtotal }
  end
end
