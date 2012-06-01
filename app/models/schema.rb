class Schema < ActiveRecord::Base
  has_and_belongs_to_many :schemaFields
  has_and_belongs_to_many :fieldsGroups
end
