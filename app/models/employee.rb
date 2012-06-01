class Employee < ActiveRecord::Base
  has_many :applicationUsers
  has_and_belongs_to_many :employeeGroups
end
