class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:home]

  def home
  end

  def show

  end

  
  private

  def require_login
    unless session.include? :name
      redirect_to new_session_path
    end
  end
end
