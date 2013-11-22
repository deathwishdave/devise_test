class RegistrationsController < Devise::RegistrationsController
  private
  def after_sign_in_path_for(resource)
    #stored_location_for(resource) || user_url
    debugger
    root_url
  end
end