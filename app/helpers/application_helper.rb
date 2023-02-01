module ApplicationHelper
  PERMIT_ROLES = %w[admin editor].freeze

  def enough_permissions?(user)
    return false if user.nil?

    user_role = user.roles.map(&:name)

    PERMIT_ROLES & user_role != []
  end
end
