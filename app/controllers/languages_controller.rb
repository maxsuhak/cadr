class LanguagesController < ApplicationController
  skip_before_filter :authenticate_user!
  before_filter :lenguage
  
  def index
    session[:locale] = params[:locale]
    # redirect_to :back
  end

  private
    def lenguage
      I18n.locale = params[:locale]
    end
end
