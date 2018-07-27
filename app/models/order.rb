# == Schema Information
#
# Table name: orders
#
#  id             :bigint(8)        not null, primary key
#  paid           :boolean          default(FALSE), not null
#  subtatol_cents :integer          default(0), not null
#  tax_cents      :integer          default(0), not null
#  tax_rate       :float            not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  balance_cents  :integer          default(0), not null
#

class Order < ApplicationRecord
  validates :subtatol_cents, :numericality => { greate_than_or_equal_to: 0 }
  validates :tax_cents, :numericality => { greate_than_or_equal_to: 0 }
  validates :balance_cents, :numericality => { greate_than_or_equal_to: 0 }

  has_many :line_products
end
