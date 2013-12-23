class TreesController < ApplicationController
  inherit_resources
  def index
    @users = User.all
  end
end
