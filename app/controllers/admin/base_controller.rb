class Admin::BaseController < ActionController::Base
  protect_from_forgery

  layout 'application'

  before_filter :authenticate_admin!

end