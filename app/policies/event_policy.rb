class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: @current_user.id)
    end
  end

  def create?
    valid_user?
  end

  def update?
    valid_user? && user.id == record.user_id
  end

  def destroy?
    update?
  end
end
