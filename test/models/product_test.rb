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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
