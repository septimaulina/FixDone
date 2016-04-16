class Project < ActiveRecord::Base
	
	belongs_to :user 
	has_many :issues 

	validates :user_id,  presence: true

	def total_issue
		self.issues.size
	end

end
