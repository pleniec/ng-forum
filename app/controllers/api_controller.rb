class APIController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from(ActiveRecord::RecordInvalid) { |e| render json: e.record.errors, status: 422 }
  rescue_from(CanCan::AccessDenied) { |e| render json: {message: e.message}, status: 403 }
end
