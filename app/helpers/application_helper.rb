module ApplicationHelper
  
  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "#{root_url}images/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=68&d=#{CGI.escape(default_url)}"
    end
  end

  def admin?
    resource_class == Admin
  end

  def user?
    resource_class == User
  end
end
