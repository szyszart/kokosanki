require 'spec_helper'

describe CartItem do
  before :each do
    @product = Product.make
    @item = CartItem.new(@product)
  end
  it "should init CartItem for product with quantity 1" do
    @item.quantity.should eq(1)
  end
  it "should increment quantity" do
    @item.increment_quantity
    @item.quantity.should eq(2)
  end
  it "should compute price as price * quantity" do
    @item.price.should eq(@product.price * @item.quantity)
  end
end
