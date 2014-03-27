class Admin::UsersController < Admin::BaseController
  inherit_resources

  def index
    @users = User.sorted.paginate(page: params[:page], per_page: 5)
  end

  def show
    redirect_to admin_users_path
  end

  def unsorted
    @users = User.unsorted.paginate(page: params[:page], per_page: 5)
  end
end
