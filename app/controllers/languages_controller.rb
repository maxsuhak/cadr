class LanguagesController < ApplicationController
  skip_before_filter :authenticate_user!
  before_filter :lenguage

  private
    def lenguage
      I18n.locale = params[:locale]
    end
end
