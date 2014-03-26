class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper :all

  before_filter :authenticate_user!, :lenguage

  layout :layout_by_resource

  def layout_by_resource
    if devise_controller? && !["edit", "update"].include?(params[:action])
      "devise"
    else
      "application"
    end
  end

  private
    def lenguage
      I18n.locale = current_user.lenguage if current_user
    end
end
