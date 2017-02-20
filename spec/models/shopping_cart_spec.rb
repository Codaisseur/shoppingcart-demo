require "rails_helper"

describe ShoppingCart do
  let(:cart) { ShoppingCart.new }
  let(:an_apple) { "An Apple" }
  let(:a_pear) { "A Pear" }

  before { cart.put_something_in_it(an_apple) }

  describe "#put_something_in_it" do
    it "should add An Apple to the cart's @items" do
      expect(cart.items).to include(an_apple)
    end
  end

  describe "#remove_something_from_it" do
    before { cart.put_something_in_it(a_pear) }

    it "should remove A Pear from the cart's @items, but not An Apple" do
      cart.remove_something_from_it(a_pear)
      expect(cart.items).to include(an_apple)
      expect(cart.items).not_to include(a_pear)
    end
  end
end
