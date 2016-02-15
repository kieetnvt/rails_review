require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  test "supplier has one account" do
    one_acc = Account.create(supplier_id: suppliers(:one).id)
    assert_equal suppliers(:one).account, one_acc
  end
end
