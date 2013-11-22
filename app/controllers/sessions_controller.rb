class SessionsController < Devise::SessionsController
  def create
      rtn = super
      debugger
      sign_in(resource.type.underscore, resource.type.constantize.send(:find, resource.id)) unless resource.type.nil?
      rtn
  end
end