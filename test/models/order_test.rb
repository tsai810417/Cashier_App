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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
