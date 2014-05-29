# Encoding: UTF-8

class UserMailer < ActionMailer::Base

  default from: "support@infocus.net"

  def device_registration_success_email(user)
    user.send_confirmation_instructions
  end

  def after_update(user)
  	@user = user
  	@url = root_url
  	mail(to: @user.email, subject: "обновление данных юзера")
  end
end
