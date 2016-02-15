require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test "customer has many order" do
    one_order = customers(:one).orders.create

    assert_includes customers(:one).orders, one_order
  end
end
