class Admin::ScreenOperatorController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :authorize_admin?
  before_action :set_operator_register, only: [:approve, :disapprove]
  def index
    @tour_operator_registers = TourOperatorRegister.where(status: 'pending').order(:id).page(params[:page])
  end

  def show
    @register = TourOperatorRegister.select("tour_operator_registers.*, business_types.name").
                                     joins(:business_type).find(params[:id])
  end

  def approve
    password = SecureRandom.hex(4)
    user = User.new
    user.email = @register.email
    user.password = password
    user.password_confirmation = password
    respond_to do |format|
      if user.save
        user.operator!
        @register.approve!
        ScreenOperator.approve(@register, password).deliver
        format.html { redirect_to admin_screen_operator_path(@register),
                                  notice: 'อนุมัติเสร็จเรียบร้อย' }
      else
        format.html { redirect_to admin_screen_operator_path(@register),
                        notice: user.errors.messages.keys.
                          collect{|k| user.errors.messages[k][0]}.join(',') }
      end
    end
  end

  def disapprove
    ScreenOperator.disapprove(@register).deliver
    @register.disapprove!
    redirect_to admin_screen_operator_path(@register)
  end

  private
  def set_operator_register
    @register = TourOperatorRegister.find(params[:id])
  end
end
