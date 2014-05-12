class DashboardsController < ApplicationController
  inherit_resources
  def index
    @dashboards = Dashboard.paginate(page: params[:page]).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
end
