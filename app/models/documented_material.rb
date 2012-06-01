class DocumentedMaterial < ActiveRecord::Base
  belongs_to :document
  belongs_to :material
end
