class Admin::UsersController < Admin::BaseController
  inherit_resources

  def index
    @users = User.sorted.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def show
    UserMailer.after_admin_update(User.find(params[:id])).deliver
    redirect_to admin_users_path
  end

  def unsorted
    @users = User.unsorted.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end
end
