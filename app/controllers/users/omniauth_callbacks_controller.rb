class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", kind: "Google"

    unless @user.present?
      redirect_to root_url
    end

    if @user.confirmed?
      sign_in_and_redirect @user, event: :authentication
    else
      UserMailer.device_registration_success_email(@user).deliver
      redirect_to root_url
    end
  end
end
