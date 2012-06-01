class SchemaField < ActiveRecord::Base
  has_and_belongs_to_many :schemas
end
