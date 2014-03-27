class UsersController < ApplicationController
  inherit_resources
  
  def index
    @users = params[:id].blank? ? User.all : User.where(tree_id: params[:id])
  end
end
