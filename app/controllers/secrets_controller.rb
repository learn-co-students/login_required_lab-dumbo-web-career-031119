class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def require_login
        return redirect_to :root unless session[:name] != nil && session[:name] != ''
    end
end
