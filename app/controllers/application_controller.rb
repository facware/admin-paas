class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  add_flash_types :success, :info, :warning, :error
  before_action :authenticate_account!
end
