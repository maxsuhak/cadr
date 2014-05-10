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

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: lambda { |exception| render_error 500, exception }
    rescue_from ActionController::RoutingError, ActionController::UnknownController, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, with: lambda { |exception| render_error 404, exception }
  end

  private
    def lenguage
      I18n.locale = current_user.lenguage if current_user
    end

    def render_error(status, exception)
      respond_to do |format|
        format.html { render template: "errors/error_#{status}", layout: 'layouts/application', status: status }
        format.all { render nothing: true, status: status }
      end
    end
end
