# == Schema Information
#
# Table name: providers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  attr_accessible :name, :phone
  validates :name, presence: true
  validates :phone, presence: true
  # default_scope provider:'provider.name ASC'
end
