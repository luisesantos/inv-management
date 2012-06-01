class SalesOrder < Document
  has_one :customer
  has_one :salesPerson, :class_name => "Employee"
  has_one :billToAdress, :class_name => "Address"
  has_one :shipToAdress, :class_name => "Address"
  has_one :carrier
  #find out what a shipping term , a FOB and a payment term are
end
