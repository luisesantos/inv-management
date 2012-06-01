class ApplicationUser < User
  has_and_belongs_to_many :activities
  has_and_belongs_to_many :rols
  belongs_to :employee
  has_and_belongs_to_many :userGroups
end