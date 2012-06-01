class PurchaseOrder < Document
  has_one :vendor
  has_one :carrier
  #has_one payment term
  #has_one shipping term
end

