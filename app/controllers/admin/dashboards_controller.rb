class Admin::DashboardsController < Admin::BaseController
  inherit_resources

  def index
    @dashboards = Dashboard.paginate(page: params[:page], per_page: 5)
  end

  def show
    redirect_to admin_dashboards_path
  end
end