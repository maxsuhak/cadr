class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", kind: "Google"
    if @user == nil
      redirect_to root_url
    else
      sign_in_and_redirect @user, event: :authentication
    end
  end
end