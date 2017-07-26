module ProductsHelper

  def print_price(price)
    number_to_currency price
  end

  def print_stock(stock)
    if stock > 0
      content_tag(:span, "Stock: #{stock}", class: "in_stock")
    else
      content_tag(:span, "No Stock", class: "out_stock")
   end
  end

end

