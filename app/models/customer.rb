class Customer < ActiveRecord::Base
  has_one :defaultCarrier, :class_name => "Carrier"
  has_many :addresses
  #has_one :defaultTerm  Find out what this is
  #has_one :defaultShippingTerm  Find out what this is
  #has_one tax_rate
  #has_many accountNumbers
  #has_one default account
  #has_one default address
end
