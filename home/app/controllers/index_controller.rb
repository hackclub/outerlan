class IndexController < ApplicationController
  def index
    params[:action] = "home"
  end

  def tilde
    params[:action] = "tilde"
  end
  
  def domains
    params[:action] = "domains"
  end

  def support
    params[:action] = "support"
  end
end
