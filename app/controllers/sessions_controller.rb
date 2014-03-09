class SessionsController < Devise::SessionsController
  def create
    resource = warden.authenticate!(scope: resource_name, recall: 'sessions#failure')
    sign_in_and_redirect(resource_name, resource)
  end
 
  def sign_in_and_redirect(resource_or_scope, resource=nil)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    resource ||= resource_or_scope
    sign_in(scope, resource) unless warden.user(scope) == resource
    # yield resource if block_given?
    return render json: { session_success: true }
  end
 
  def failure
    return render json: { session_success: false, error: 'Login failed. Please try again.' } #, data: resource.errors.full_messages
  end
end
