class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :lenguage

  private
    def lenguage
      I18n.locale = session[:locale]
    end
end
