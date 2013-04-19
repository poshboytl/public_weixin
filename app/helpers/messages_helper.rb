module MessagesHelper
  def heart_tag(message)
    klass = message.voted? ? 'liked' : 'like'
    content_tag :a, href: "#", class: klass, data: { bizid: message.bizid, msgid: message.msgid } do
      "<i class='icon-heart'></i>".html_safe
    end
  end
end
