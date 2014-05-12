class UsersController < ApplicationController
  inherit_resources
  
  def index
    @users = params[:id].blank? ? User.paginate(page: params[:page]).order('created_at DESC') : User.where(tree_id: params[:id]).paginate(page: params[:page]).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
end
