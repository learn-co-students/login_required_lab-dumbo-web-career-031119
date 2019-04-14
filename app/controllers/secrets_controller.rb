class SecretsController < ApplicationController
  before_action :require_login

  def show
    # byebug
  end

  private

  def require_login
    # byebug
    if session[:name].nil? || session[:name].length < 1
      redirect_to "/login"
    end
  end
end
