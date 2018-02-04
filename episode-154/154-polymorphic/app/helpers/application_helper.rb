module ApplicationHelper
  def render_user_email(user)
    user.email.split('@').first
  end
end
