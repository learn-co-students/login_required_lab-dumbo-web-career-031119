class SessionsController < ApplicationController
  def current_user
  end

  def create
    if params[:name].nil? || params[:name].length < 1
      redirect_to "/login"
    end
    session[:name] = params[:name]
  end

  def destroy
    session[:name] = nil
  end
end
