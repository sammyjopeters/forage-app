class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index]


    # #takes you back to the page you were on once you've signed in.
    # def after_sign_in_path_for(resource)
    # request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    # end

    # def after_sign_in_path_for(resource)
    # user_listings_path(current_user.id)
    # end


end
