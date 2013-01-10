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

class Order < ActiveRecord::Base
  belongs_to :provider
  attr_accessible :amount, :pay_at, :pay_type, :provider_id, :received_at, :invoice, :number_check
  validates :provider_id, presence: true
  validates :amount, presence: true
  validates :pay_at, presence: true
  validates :received_at, presence: true
  validates :pay_type, presence: true
  validates :number_check, presence: true
  default_scope order: 'orders.received_at DESC'
end
