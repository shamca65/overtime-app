class AuditLogPolicy < ApplicationPolicy


  def poobear?
    return true if admin?
  end

  def index?
    return true if admin?
  end

  private

  def admin?
    admin_types.include?(user.type)
  end

end