class Warehouse < ActiveRecord::Base
  has_and_belongs_to_many :inventories
  has_many :locations
end
