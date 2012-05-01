class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_is_editor
    user = session[:user]

    if user and user.can_edit
      true
    else
      redirect_to '/'
    end
  end
end
