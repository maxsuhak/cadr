class Admin::UsersController < Admin::BaseController
  inherit_resources

  def show
    redirect_to admin_users_path
  end

  def unsorted
    @users = User.unsorted
  end
end
