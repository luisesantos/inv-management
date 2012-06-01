class Document < ActiveRecord::Base
  #we need this table to keep record of the qty of product in this location
  has_many :documentedProducts
  has_many :products, :through => :documentedProducts
  
  has_many :documentedMaterials
  has_many :materials, :through => :documentedMaterials
  
  has_many :packages
end
