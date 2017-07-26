FactoryGirl.define do
  factory :product do
    title { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    description { Faker::Lorem.sentence }
    image_url { Faker::LoremPixel.image }
  end
end
