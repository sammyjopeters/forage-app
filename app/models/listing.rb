class Listing < ActiveRecord::Base
	belongs_to :user
	belongs_to :category


	# def category_id=(the_id)
	# 	self.category_ids << the_id
	# end

end
