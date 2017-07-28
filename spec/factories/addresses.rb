# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  line1      :string
#  line2      :string
#  city       :string
#  state      :string
#  zip        :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :address do
    line1 "MyString"
    line2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    user_id 1
  end
end
