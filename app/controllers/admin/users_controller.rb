class Admin::UsersController < Admin::BaseController
  inherit_resources

  # def index
  #   # @users = User.where.not(tree_id: nil)
  # end
  
  def show
    redirect_to admin_users_path
  end

  def unsorted
    @users = User.unsorted
  end
end
