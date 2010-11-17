require 'spec_helper'

describe Category do
  it "should not allow empty name" do
    Category.new.should have(1).errors_on(:name)
  end
  it "should allow non-empty name" do
    Category.new(:name => "Clockwork Orange").should have(0).errors_on(:name)
  end
end
