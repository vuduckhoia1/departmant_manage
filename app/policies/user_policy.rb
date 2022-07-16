class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    @user.has_any_role? :admin, :hr, :department_manager
  end

  def show?
    (@user.has_any_role? :admin, :department_manager) || correct_user?
  end

  def edit?
    (@user.has_any_role? :admin, :department_manager) || correct_user?

  end

  def new?
    @user.has_any_role? :admin, :department_manager
  end

  def destroy?
    @user.has_any_role? :admin, :department_manager

  end
end
