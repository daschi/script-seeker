module SessionsHelper
  private
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def logged_in?
    p "I'm in logged in"
    !session[:id].nil?
  end
end
