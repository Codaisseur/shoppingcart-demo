class ShoppingCartController < ApplicationController
  def index
    # all items in the cart
    @items = cart.items
  end

  def create
    # add something!
  end

  def destroy
    # remove something!
  end

  private

  def cart
    session[:shopping_cart] ||= []
    ShoppingCart.new(session[:shopping_cart])
  end
end
