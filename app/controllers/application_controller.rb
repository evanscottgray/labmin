class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? && (resource_name == :user) && action_name == 'new'
      "devise"
    else
      "application"
    end
  end
end
