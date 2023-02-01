module UsersHelper
  def role_ids_finder
    Role.all.map { |role| [t(role.name, scope: 'roles.name'), role.id] }
  end
end
