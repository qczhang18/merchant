require 'rails_helper'

RSpec.describe "order_items/edit", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :product_id => 1,
      :order_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit order_item form" do
    render

    assert_select "form[action=?][method=?]", order_item_path(@order_item), "post" do

      assert_select "input[name=?]", "order_item[product_id]"

      assert_select "input[name=?]", "order_item[order_id]"

      assert_select "input[name=?]", "order_item[quantity]"
    end
  end
end
