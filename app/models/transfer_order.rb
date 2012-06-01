class TransferOrder < Document
  has_one :fromAddress, :class_name => "Address"
  has_one :toAddress, :class_name => "Address"
  has_one :carrier
end
