class ReceivingOrder < Document
  has_one :carrier
  has_one :responsable, :class_name => "Employee"
  has_one :location
end
