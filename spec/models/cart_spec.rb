require 'spec_helper'

describe Cart do
  before :each do
    @cart = Cart.new
  end
  it "should init empty cart" do
    @cart.items.should eq([])
  end
  it "should succeed empty? with empty cart" do
    @cart.empty?.should eq(true)
  end
  describe "products" do
    before :each do
      @product = Product.make
      @cart.add_product(@product)
    end
    it "should fail empty? with non-empty cart" do
      @cart.empty?.should eq(false)
    end
    it "should add product" do
      @cart.items[0].product.should eq(@product)
    end
  end
end
