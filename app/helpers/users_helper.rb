module UsersHelper

  def addUserLink
    if can? :create, @user
      "You Can Add New User"
    elsif can? :read, @user
      "You can view users"
    end 
  end 

end
