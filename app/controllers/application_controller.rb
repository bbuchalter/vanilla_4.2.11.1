class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  around_action :log_method_calls

  def log_method_calls
    Rotoscope::CallLogger.trace(ROTO_CONTROLLER_DEST, blacklist: ROTO_BLACKLIST) do
      yield
    end
  end
end
