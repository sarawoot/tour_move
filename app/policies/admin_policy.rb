class AdminPolicy < Struct.new(:user, :admin)
  def role_admin?
    user.admin?
  end
end