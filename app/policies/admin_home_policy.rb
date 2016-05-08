class AdminHomePolicy < Struct.new(:user, :admin_home)
  def index?
    user.admin?
  end
end