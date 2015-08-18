class SessionsController < ApplicationController

  def new
    @session
  end

  def create
    if user =User.authenticate(params[:email], params[:password])
      session[:id] = user.id
      redirect_to root_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end
