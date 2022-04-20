class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: 'new post created!'
    else
      puts '###########'
      puts '#failed!!!#'
      puts '###########'
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, images: [])
  end
end
