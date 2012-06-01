class BusinessProcess < ActiveRecord::Base
  #we need this table to keep record of location hierarchy
  has_many :childprocesses, :class_name => "Process"
  belongs_to :parentProcess, :foreign_key => "parentprocess_id", :class_name => "Process"
end
