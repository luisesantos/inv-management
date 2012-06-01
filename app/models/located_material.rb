class LocatedMaterial < ActiveRecord::Base
  belongs_to :material
  belongs_to :location
end
