class Company < ActiveRecord::Base
  has_many :inventories
  has_many :addresses
end
