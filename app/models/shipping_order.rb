class ShippingOrder < Document
  has_one :address
  has_one :location #if the shipping has not been shipped yet, it can be in a location of the warehouse
  has_one :carrier
end
