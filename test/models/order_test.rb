require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "order belongs to customer" do
    one_order = customers(:one).orders.create

    assert_equal one_order.customer_id, customers(:one).id
    assert_equal one_order.customer, customers(:one)
  end
end
