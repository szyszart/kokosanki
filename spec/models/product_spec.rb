require 'spec_helper'

describe Product do
  it "should not allow empty names nor desc" do
    product = Product.new
    product.should have(1).errors_on(:name)
    product.should have(1).errors_on(:description)
  end
  it "should allow non-empty names" do
    product = Product.new(:name => "Hommie", :description => "righty, right")
    product.should have(0).errors_on(:name)
    product.should have(0).errors_on(:description)
  end
  it "name should be unique" do
    product = Product.make(:name => "Clockwork Orange")
    product_2 = Product.make(:name => "Clockwork Orange")
    product_2.save.should be_false
  end
end
