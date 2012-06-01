class DocumentedProduct < ActiveRecord::Base
  belongs_to :document
  belongs_to :product
end
