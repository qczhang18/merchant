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

  def self.find_or_create_by_auth(auth_data)
    find_or_create_by(provider: auth_data["provider"], uid: auth_data["uid"], name: auth_data["info"]["name"])
  end
end
