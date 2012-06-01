class Material < ActiveRecord::Base
  has_many :productmaterialdetails, :class_name => "ProductMaterialDetail"
  has_many :products, :through => :productmaterialdetails
  
  #we need this table to keep record of the qty of product in a particular location
  has_many :locatedMaterials
  has_many :locations, :through => :locatedMaterials
  
  #we need this table to keep record of the qty of product in a particular document
  has_many :documentedMaterials
  has_many :documents, :through => :documentedMaterials
  
  #we need this table to keep record of location hierarchy
  has_many :childmaterials, :class_name => "Material"
  belongs_to :parentmaterial, :foreign_key => "parentmaterial_id", :class_name => "Material"
  
  has_many :vendorMaterials
  has_many :vendors, :through => :vendorMaterials
  
  has_and_belongs_to_many :materialGroups
end