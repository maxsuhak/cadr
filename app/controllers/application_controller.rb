class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :lenguage
  before_filter :authenticate_user!

  private
    def lenguage
      I18n.locale = current_user.lenguage if current_user
    end
end
