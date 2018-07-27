# == Schema Information
#
# Table name: line_products
#
#  id          :bigint(8)        not null, primary key
#  quantity    :integer
#  price_cents :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order_id    :integer          not null
#  product_id  :integer          not null
#  sugar       :string           default("100"), not null
#  ice         :string           default("100"), not null
#

require 'test_helper'

class LineProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
