require 'machinist/active_record'

Product.blueprint do
  name { "Name:#{sn}" }
  description { "Description:#{sn}" }
end
