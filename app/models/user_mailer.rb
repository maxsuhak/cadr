# Encoding: UTF-8

class UserMailer < ActionMailer::Base

  default from: "support@infocus.net"

  def device_registration_success_email(user)
    user.send_confirmation_instructions
  end
end