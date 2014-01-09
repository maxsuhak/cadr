class UsersController < ApplicationController
  inherit_resources
  def index
    @users = User.find_by_tree_id(params[:id])
  end
end
