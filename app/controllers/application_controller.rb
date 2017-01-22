class ApplicationController < ActionController::Base

helper_method :include_navbar?

def include_navbar?
  controller_name != 'sessions' && controller_name != 'registrations'
end

def after_sign_in_path_for(resource)
  request.env['omniauth.origin'] || root_path
end

  protect_from_forgery with: :exception
end
