class SessionsController < ApplicationController

def create
  if params[:name] == nil || params[:name].empty?
    redirect_to :controller => 'sessions', :action => 'new'
  else
    session[:name] = params[:name]
  end
end

def destroy
  if session[:name] == nil
  else
  session.destroy
  end
end

end
