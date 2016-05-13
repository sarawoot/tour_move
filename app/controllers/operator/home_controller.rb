class Operator::HomeController < ApplicationController
  layout 'operator'
  before_action :authenticate_user!
  before_action :authorize_operator?
  def index
  end
end
