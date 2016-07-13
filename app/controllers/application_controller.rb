class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
  	@contents = Content.where(page_id: 1)
  end

  protect_from_forgery with: :exception
end
