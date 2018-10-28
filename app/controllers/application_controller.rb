class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def required_logged_in
    if !logged_in?
      redirect_to signup_url
    end
  end
end