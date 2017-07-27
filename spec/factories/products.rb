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

FactoryGirl.define do
  factory :product do
    title { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    description { Faker::Lorem.sentence }
    image_url { Faker::LoremPixel.image }
  end
end
