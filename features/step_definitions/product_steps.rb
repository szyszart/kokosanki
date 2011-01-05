Given /^I have no products$/ do
  Product.delete_all
end

Given /^I am not authenticated$/ do
  visit('/admins/sign_out')
end

Given /^I have one\s+admin "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  Admin.new(:email => email,
           :password => password,
           :password_confirmation => password).save!
end

Given /^I am logged in as an admin$/ do
  email = 'testing@man.net'
  password = 'secretpass'

  Given %{I have one admin "#{email}" with password "#{password}"}
  And %{I go to login}
  And %{I fill in "admin_email" with "#{email}"}
  And %{I fill in "admin_password" with "#{password}"}
  And %{I press "Sign in"}
end

Given /^there is a unit named "([^"]*)" defined$/ do |arg|
  Unit.create!(:name => arg, :abbr => arg)
end

Given /^there is a category "([^"]*)" defined$/ do |arg|
  Category.create!(:name => arg)
end

Given /^there is a product "([^"]*)" defined$/ do |name|
  unit = 'kg'
  category = 'testing'
  
  Given %{there is a unit named "#{unit}" defined}
  Given %{there is a category "#{category}" defined}

  Product.create!(:name => name,
                  :description => 'This product rocks',
                  :category_id => Category.find_by_name(category),
                  :unit_id => Unit.find_by_name(unit))
end

When /^I select "([^"]*)" as unit$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I select "([^"]*)" as category$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should have (\d+) product$/ do |count|
  Product.count.should == count.to_i
end

