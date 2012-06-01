class Rol < ActiveRecord::Base
  has_and_belongs_to_many :activities
  has_and_belongs_to_many :applicationUsers
end
