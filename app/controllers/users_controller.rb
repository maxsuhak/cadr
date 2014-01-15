class UsersController < ApplicationController
  inherit_resources
  
  def index
    @users = User.where(tree_id: params[:id])
  end
end
