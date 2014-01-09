class Admin::TreesController < Admin::BaseController
  inherit_resources
  
  def show
    redirect_to admin_trees_path
  end
end
