class OperatorPolicy < Struct.new(:user, :operator)
  def role_operator?
    user.operator?
  end
end