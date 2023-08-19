class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    valid_user? && user.id == record.id
  end

  def destroy?
    update?
  end
end
