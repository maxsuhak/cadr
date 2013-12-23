module FlashHelper
  ALERT_TYPES = [:error, :info, :success, :warning]

  def flash_messages
    flash_messages = []
    flash.each do |type, message|
      next if message.blank?

      type = :success if type == :notice
      type = :error   if type == :alert
      next unless ALERT_TYPES.include?(type)

      Array(message).each_with_index do |msg, i|
        text = content_tag(:div,
                           content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
                           msg.html_safe, :class => "alert fade in alert-#{type} autoclose_#{i}"),
                           content_tag(:div, "<script type='text/javascript'> setTimeout(function () { $('.autoclose_#{i}').alert('close')}, 5000) </script>".html_safe)
        flash_messages << text if message
      end
    end
    flash_messages.join("\n").html_safe
  end
end