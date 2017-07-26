require 'rails_helper'

RSpec.describe "order_items/new", type: :view do
  before(:each) do
    assign(:order_item, OrderItem.new(
      :product_id => 1,
      :order_id => 1,
      :quantity => 1
    ))
  end

  it "renders new order_item form" do
    render

    assert_select "form[action=?][method=?]", order_items_path, "post" do

      assert_select "input[name=?]", "order_item[product_id]"

      assert_select "input[name=?]", "order_item[order_id]"

      assert_select "input[name=?]", "order_item[quantity]"
    end
  end
end
