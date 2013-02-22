module ApplicationHelper
	def login_status
		if current_user
			render 'layouts/logged_in_header'
		else 
			render 'layouts/logged_out_header'
		end 
	end 

  def admin
    if not current_user.blank? and current_user.role == "Admin"
      return true 
    end 
  end 

end
