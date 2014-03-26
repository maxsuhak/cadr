class Admin::BaseController < ActionController::Base
  protect_from_forgery

  helper :all

  layout 'admin'

  before_filter :authenticate_admin!

end