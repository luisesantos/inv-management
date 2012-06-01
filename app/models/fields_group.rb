class FieldsGroup < Group
  has_and_belongs_to_many :schemas
  has_and_belongs_to_many :schemaFields
end
