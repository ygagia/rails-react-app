module ApplicationHelper
  def readable_time(time)
    time.strftime('%b %d %Y, %I:%M%P')
  end
end
