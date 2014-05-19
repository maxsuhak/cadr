class Admin::PostsController < Admin::BaseController
  inherit_resources

  def index
    @posts = Post.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def show
    redirect_to admin_posts_path
  end
end
