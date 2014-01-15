class UsersController < ApplicationController
  inherit_resources
  
  def index
    binding.pry
    @users = User.where(tree_id: params[:id])
  end
end
