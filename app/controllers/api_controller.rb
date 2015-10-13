class APIController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordInvalid do |exception|
    render json: exception.record.errors, status: 422
  end
end
