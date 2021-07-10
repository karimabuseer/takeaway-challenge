class Order
  attr_reader :basket
  def initialize
    @basket = []
  end

  def add_item(dish, quantity = 1)
    quantity.times { @basket << dish}
  end

  def verify
    order_print
    total_print
  end

  def order_print
    puts 'Your current basket:'
    @basket.map { |item| dish_print(item)}
  end

  def dish_print(item)
    item.map { |dish, price| puts "#{dish.to_s.gsub(/_/, ' ').capitalize } : £#{sprintf "%.2f", price}" }
  end


  def total_print
  end
end