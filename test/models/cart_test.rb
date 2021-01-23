require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "add already existing product to a cart" do
    line_items_count_before_addition = line_items.length
    cart = carts(:one)
    cart.add_product(products(:one))

    assert_equal line_items_count_before_addition, line_items.length
  end
end
