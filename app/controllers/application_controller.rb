class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user


  def current_user
    begin
      @currnet_user ||= User.find(session[:user_id])
    rescue Exception => e
      nil
    end
  end

end
