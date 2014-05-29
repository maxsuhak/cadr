class Users::RegistrationsController < Devise::RegistrationsController
  layout 'application'

  include Wicked::Wizard

  def update
    params[:user].delete(:password) if params[:user][:password].blank?
    if @user.update_attributes(params[:user])
      UserMailer.after_update(@user).deliver
      redirect_to @user
    else
      render 'edit'
    end
  end
end
