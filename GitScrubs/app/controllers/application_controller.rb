class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @shifts = Shift.all

end
