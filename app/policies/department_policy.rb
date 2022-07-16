class DepartmentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    @user.has_any_role? :admin,:department_manager
  end

  def show?
    @user.has_any_role? :admin

  end

  def new?
    @user.has_any_role? :admin

  end

  def destroy?
    @user.has_any_role? :admin

  end

  def edit?
    @user.has_any_role? :admin
  end
end
