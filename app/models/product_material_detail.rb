class ProductMaterialDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :material
end
