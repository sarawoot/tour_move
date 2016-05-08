class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  use_growlyflash

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, notice: 'ขออภัยคุณไม่มีสิทธิ์ใช้งาน'#exception.message#, status: :forbidden #HTTP 403
  end
end
