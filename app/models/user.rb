# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :orders

  def self.find_or_create_by_auth(auth_data)
    find_or_create_by(provider: auth_data["provider"], uid: auth_data["uid"]) { |x| x.name = auth_data["info"]["name"] }
  end
end
