class SessionsController < ApplicationController

    def new
    end

    def create
        if (params[:name] != '' && params[:name] != nil)
            session[:name] = params[:name]
            redirect_to :show
        else
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end
end