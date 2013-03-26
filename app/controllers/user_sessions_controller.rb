class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:destroy] 
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
      flash[:notice] = "Sign in successful!"
      redirect_to root_url         
    else
      render 'new'
    end
  end

  def edit
    @user_session = UserSession.new 
  end 

  def show
    user_session  = UserSession.find
    @current_user = user_session.user 
  end

  def destroy
    user_session = UserSession.find
    user_session.destroy
    redirect_to root_url
  end
end