class Admin::HomeController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :authorize_admin?
  def index
  end
end
