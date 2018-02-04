module ApplicationHelper
  def render_user_email(user)
    user.email.split('@').first
  end

  def full_title(page_title = '')
    base_title = "RailsCasts"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
