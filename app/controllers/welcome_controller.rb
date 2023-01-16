class WelcomeController < ApplicationController
  def welcome
    @posts = Post.all
  end
end
