class ApplicationController < ActionController::Base
  include Pundit::Authorization
  
  before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  rescue_from Pundit::NotAuthorizedError, with: :unauthorized_response
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

  def unauthorized_response
    render json: { errors: ["Not authorized"] }, status: :forbidden
  end
  
  def not_found_response
    render json: { errors: ["Record not found"] }, status: :not_found
  end

  def authenticate_user
    set_current_session
    set_current_user
    set_current_user_references
  end

  def set_current_session
    @current_session ||= Session.find_by(id: authorization_token)
    @current_session = User.first.sessions.first if Rails.env.development?
  end

  def set_current_user
    @current_user ||= @current_session.try(:user)
    @current_user = User.first if Rails.env.development?
  end

  def set_current_user_references
    @current_user_references = {
      ip: Digest::SHA1.hexdigest(request.remote_ip.to_s.split.last.to_s),
      ip_clear: request.remote_ip
    }.tap do |base|
      if @current_user.present?
        base[:user_id] = @current_user.id
      end
    end
  end

  def authorization_token
    cookies.signed[:session_id]
  end
end
