class RegistrationsController < Devise::RegistrationsController
  def create
    if request.xhr?
      build_resource(sign_up_params)
      if resource.save
        if resource.active_for_authentication?
          set_flash_message :notice, :signed_up if is_navigational_format?
          # sign_in(resource_name, resource)
          # respond_with resource, location: after_sign_up_path_for(resource)
          return render json: { success: true }
        else
          set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
          expire_session_data_after_sign_in!
          respond_with resource, :location => after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        # respond_with resource
        return render json: { success: false }
      end
    else
      build_resource(sign_up_params)
      if resource.save
        if resource.active_for_authentication?
          set_flash_message :notice, :signed_up if is_navigational_format?
          # sign_in(resource_name, resource)
          respond_with resource, :location => after_sign_up_path_for(resource)
        else
          set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
          expire_session_data_after_sign_in!
          respond_with resource, :location => after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        respond_with resource
      end
    end
  end

  def after_sign_up_path_for(resource)
    root_path
  end
end
