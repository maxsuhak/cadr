class DashboardsController < ApplicationController
  inherit_resources
  def index
    @dashboards = Dashboard.paginate(page: params[:page], per_page: 15).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
end
