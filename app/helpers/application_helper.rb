module ApplicationHelper
	def login_status
		if current_user
			render 'layouts/logged_in_header'
		else 
			render 'layouts/logged_out_header'
		end 
	end 	
end
