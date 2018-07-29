# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  price_cents :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#

class Product < ApplicationRecord
  validates :name, presence: true
  validates :price_cents, presence: true
  validates :category_id, presence: true

  belongs_to :category
  has_many :line_products
  has_many :orders, through: :line_products
end
