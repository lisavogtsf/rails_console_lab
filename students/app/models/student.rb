class Student < ActiveRecord::Base
	# associations would go here
	validates_uniqueness_of :last_name, :message => "last_name must be unique"
	validates_length_of :first_name, :minimum => 4, :message => "first_name must be more than 4 characters"
	validates_length_of :last_name, :minimum => 4, :message => "last_name must be more than 4 characters"
	validates_presence_of :first_name, :message => "first_name cannot be left blank"
	validates_presence_of :last_name, :message => "last_name cannot be left blank"
end
