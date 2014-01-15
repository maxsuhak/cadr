class Admin::DashboardsController < Admin::BaseController
  inherit_resources
  def show
    redirect_to admin_dashboards_path
  end
end