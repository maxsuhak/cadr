class Admin::TreesController < Admin::BaseController
  inherit_resources

  def index
    @trees = Tree.paginate(page: params[:page], per_page: 5)
  end
  
  def show
    redirect_to admin_trees_path
  end
end
