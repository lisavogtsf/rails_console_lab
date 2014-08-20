class Student < ActiveRecord::Base
	# associations would go here

	validates :first_name, {
		:presence => true,
		:length => {:minimum => 4}
	}
	
	validates :last_name, {
		:presence => true,
		:uniqueness => true,
		:length => {:minimum => 4}
	}

end
