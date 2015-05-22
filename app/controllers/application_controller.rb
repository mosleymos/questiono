class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def not_found
    Rails.root.join('public','404.html')
  end

  def unknown_problem
    Rails.root.join('public','500.html')
  end

end
