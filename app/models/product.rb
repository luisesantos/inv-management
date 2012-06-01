class Product < ActiveRecord::Base
  #we need this table to keep record of the qty of product in a particular location
  has_many :locatedProducts
  has_many :locations, :through => :locatedProducts
  
  has_many :productmaterialdetails, :class_name => "ProductMaterialDetail"
  has_many :materials, :through => :productmaterialdetails
  
  has_many :documentedProducts
  has_many :documents, :through => :documentedProducts
  
  has_and_belongs_to_many :productGroups
end
