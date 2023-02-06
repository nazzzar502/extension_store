class ApplicationController < ActionController::Base
  before_action :authorize
  
  def current_controller?(names)
    names.include?(current_controller)
  end

  protected

    def authorize 
      @current_user = User.find_by(id: session[:user_id])

      unless @current_user
        #redirect_to login_url, notice: 'Please log in'

        authenticate_or_request_with_http_basic('Application') do |username, password|
          username == 'Dave' && password == 'hand'
        end
      end 
    end
end
