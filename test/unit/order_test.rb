# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  provider_id :integer
#  pay_at      :datetime
#  pay_type    :integer
#  amount      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
