class WelcomeController < ApplicationController
  before_action :require_login

  def home
  end

  private

  def require_login
    return redirect_to '/login' unless session.include? :user_id
  end

end
