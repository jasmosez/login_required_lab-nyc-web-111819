class SessionsController < ApplicationController

  def new
  end
  
  def create
    if params[:name] == (nil || "")
      redirect_to(login_path)
    else
      session[:name] = params[:name]
      redirect_to(welcome_path(current_user))
    end
  end
  
  def show
    if !current_user
      redirect_to(login_path)
    else
      @current_user = current_user
    end
  end
  
  def destroy
    session[:name] = nil
    redirect_to(login_path)
  end
  
end