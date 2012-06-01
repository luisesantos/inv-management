class UserGroup < Group
  has_and_belongs_to_many :applicationUsers
end
