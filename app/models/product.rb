# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  price       :decimal(8, 2)
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stock       :integer          default(0)
#

class Product < ApplicationRecord
  validates_numericality_of :price
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_many :order_items

  def price=(input)
    input.delete!("$")
    super
  end
end
