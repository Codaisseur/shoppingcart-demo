class ShoppingCart
  attr_reader :items

  def initialize(cart)
    @items = cart
  end

  def put_something_in_it(product, amount = 1)
    item = CartItem.new(product, amount)
    @items << item
  end

  def remove_something_from_it(something)
    @items -= [something]
  end
end

item = CartItem.new(orange, 3)

class CartItem
  attr_accessor :amount

  def initialize(product, amount = 1)
    @product_id = product.id
    @amount = amount
  end

  def product
    Product.find(@product_id)
  end
end
