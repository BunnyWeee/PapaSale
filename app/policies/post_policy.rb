# frozen_string_literal: true
class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def update?
    user.roles_name.join('') == 'admin'
  end
end