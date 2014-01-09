class Admin::UsersController < Admin::BaseController
  inherit_resources

  def unsorted
    @users = User.unsorted
    render :index
  end
end
