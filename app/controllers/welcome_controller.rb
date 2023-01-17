class WelcomeController < ApplicationController
  def welcome
    @posts = Post.all
    @headline_posts = @posts.headline_posts
    @normal_posts = @posts.normal_posts
  end
end
