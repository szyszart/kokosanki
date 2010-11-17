require 'spec_helper'

describe Unit do
  it "should not allow empty name nor abbr" do
    unit = Unit.new
    unit.should have(1).errors_on(:name)
    unit.should have(1).errors_on(:abbr)
  end
  it "should allow non-empty name and abbr" do
    unit = Unit.new(:name => "Clockwork Orange", :abbr => "righty, right")
    unit.should have(0).errors_on(:name)
    unit.should have(0).errors_on(:abbr)
  end
end
