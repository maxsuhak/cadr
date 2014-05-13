module ApplicationHelper

  def avatar_url(user)
    if user[:avatar_url].present?
      user[:avatar_url]
    else
      default_url = "#{root_url}images/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user[:email].downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=68&d=#{CGI.escape(default_url)}"
    end
  end

  def admin?
    resource_class == Admin
  end

  def user?
    resource_class == User
  end

  def title_position obj
    title = obj.title
    if obj.id % 2 == 0
      content_tag(:div, content_tag(:div, "#{title}").html_safe, class: "right_title")
    else
      content_tag(:div, content_tag(:div, "#{title}").html_safe, class: "left_title")
    end
  end

  def is_nil? obj
    obj.title unless obj == nil
  end
end
