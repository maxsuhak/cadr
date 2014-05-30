# Encoding: UTF-8

class UserMailer < ActionMailer::Base

  include ApplicationHelper

  default from: "support@svitla.com"

  def device_registration_success_email(user)
    user.send_confirmation_instructions
  end

  def after_user_update(user)
    @user = user
    @url = root_url
    mail(to: @user.email, subject: "Вы обновили свои данные на Svitla")
  end

  def after_admin_update(user)
    @user = user
    @job = @user.job
    @tree = is_nil?(@user.tree)
    @url = root_url
    mail(to: @user.email, subject: "Администратор обновил Ваши данные на Svitla")
  end
end
