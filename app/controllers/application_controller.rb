class ApplicationController < ActionController::Base
  def current_controller?(names)
    names.include?(current_controller)
  end
end
