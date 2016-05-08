class Admin::HomeController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  
  def index
    authorize :admin_home, :index?
  end
end
