class Admin::PostsController < Admin::BaseController
  inherit_resources
  
  def show
    redirect_to admin_posts_path
  end
end
