class Address < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :line1, :city, :state, :zip, presence: true
  validates :state, length: { is: 2 }
  validates :zip, length: { is: 5 }

end
