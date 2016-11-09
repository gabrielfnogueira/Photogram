module NotificationsHelper
  def notification_message(notification)
    return "#{notification.notified_by.user_name} #{notification.notice_type}d your post" if notification.notice_type == 'like'
    "#{notification.notified_by.user_name} #{notification.notice_type}ed on your post"

  end
end
