module ApplicationHelper
  include Pagy::Frontend
  
  def current_user
    @current_user
  end

  def current_session
    @current_session
  end

  def current_user_references
    @current_user_references
  end
end
