module ApplicationHelper
def flash_class(level)
  bootstrap_alert_class = {
    "notice" => "alert-info",
  }
  bootstrap_alert_class[level]
end
end
