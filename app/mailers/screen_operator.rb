class ScreenOperator < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.screen_operator.approve.subject
  #
  def approve(register, password)
    @register = register
    @password = password
    mail to: @register.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.screen_operator.disapprove.subject
  #
  def disapprove(register)
    @register = register
    mail to: @register.email
  end
end
