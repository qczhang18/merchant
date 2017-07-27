# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user

  def total
    order_items.inject(0) { |sum, n| sum + n.subtotal }
  end
end
