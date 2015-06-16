module ApplicationHelper
  def fix_url(url)
    if url.starts_with?("http://")
      url
    elsif url.starts_with?("https://")
      url
    else
    "http://#{url}"
    end
  end

  def pluralize_without_count(count, noun)
    count == 1 ? "#{noun}" : "#{noun.pluralize}"
  end

  def display_datetime(dt)
    if logged_in? && !current_user.time_zone.blank?
      dt = dt.in_time_zone(current_user.time_zone)
    end
    dt.strftime("%d/%m/%Y %l:%M%P %Z")
  end
end
