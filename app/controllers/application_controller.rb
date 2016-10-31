class ApplicationController < ActionController::API

  include Knock::Authenticable

  rescue_from ::ActionController::RoutingError, with: :error_occurred
  rescue_from ::ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ::Exception, with: :error_occurred
  rescue_from ::NameError, with: :error_occurred

  protected

  def record_not_found(error)
    render json: {error: error.message}.to_json, status: :not_found
    return
  end

  def error_occurred(error)
    render json: {error: error.message}.to_json, status: 500
    return
  end

end