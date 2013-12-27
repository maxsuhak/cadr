class LanguagesController < ApplicationController
  skip_before_filter :authenticate_user!
  before_filter :lenguage
  
  def index
    current_user.update_attributes(lenguage: params[:locale]) if current_user
    # session[:locale] = params[:locale]
    # redirect_to :back
  end

  private
    def lenguage
      I18n.locale = params[:locale]
    end
end
