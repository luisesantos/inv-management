class Location < ActiveRecord::Base
  #we need this table to keep record of the qty of product in this location
  has_many :locatedproducts, :class_name => "LocatedProduct"
  has_many :products, :through => :locatedproducts
  
  #we need this table to keep record of the qty of materials in this location
  has_many :locatedmaterials, :class_name => "LocatedMaterial"
  has_many :materials, :through => :locatedmaterials
  
  #we need this table to keep record of location hierarchy
  has_many :childlocations, :class_name => "Location"
  belongs_to :parentlocation, :foreign_key => "parentlocation_id", :class_name => "Location"
  
  belongs_to :warehouse
end
