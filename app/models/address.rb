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

class Address < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :line1, :city, :state, :zip, presence: true
  validates :state, length: { is: 2 }
  validates :zip, length: { is: 5 }

  def to_s
    [line1, line2, city, state, zip].compact.join(' ')
  end

end
