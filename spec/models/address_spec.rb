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

require 'rails_helper'

RSpec.describe Address, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
