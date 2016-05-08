class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  use_growlyflash

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, notice: 'ขออภัยคุณไม่มีสิทธิ์ใช้งาน'#exception.message#, status: :forbidden #HTTP 403
  end

  private
  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
    if resource.is_a?(User)
      if resource.admin?
        admin_home_index_url
      elsif resource.user?
        root_url
      end
    else
      super
    end
  end
end
