class ApplicationController < ActionController::Base

  def is_active(action)       
    params[:action] == action ? "active" : nil        
  end

  helper_method :is_active

end
