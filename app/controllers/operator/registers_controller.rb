class Operator::RegistersController < ApplicationController
  layout "front_end"
  def new
    @tour_operator_register = TourOperatorRegister.new
  end

  def create
    @tour_operator_register = TourOperatorRegister.new(tour_operator_register_params)
    # binding.pry
    if @tour_operator_register.save
       redirect_to operator_register_path(@tour_operator_register)
    else
       render "new"
    end
  end

  def show
    @register = TourOperatorRegister.select("tour_operator_registers.*, business_types.name").
                                     joins(:business_type).find(params[:id])
  end

  private
  def tour_operator_register_params
    params.require(:tour_operator_register).permit( :contact_name, :role_contact, :email, 
                                                    :company_name_en, :company_name_local, 
                                                    :business_type_id, :main_phone_no, :company_website, 
                                                    :license_number, :license_attachment)
  end
end