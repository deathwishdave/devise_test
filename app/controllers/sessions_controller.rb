class SessionsController < Devise::SessionsController
  def create
      debugger
      sign_in(resource.type.underscore, resource.type.constantize.send(:find, resource.id)) unless resource.type.nil?
rtn = super
      rtn
  end
end