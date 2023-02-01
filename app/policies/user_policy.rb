# frozen_string_literal: true
class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    user.roles_name.join('') == 'admin'
  end
end
