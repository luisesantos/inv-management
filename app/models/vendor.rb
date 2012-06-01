class Vendor < ActiveRecord::Base
  has_many :addresses
  
  has_many :vendorMaterials
  has_many :materials, :through => :vendorMaterials
end
