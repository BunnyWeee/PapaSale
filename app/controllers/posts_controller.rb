class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  include PostSetData

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    set_post_user
  end

  def create
    @post = Post.new(post_params)
    set_post_user

    if @post.save
      redirect_to posts_path, notice: 'new post created!'
    else
      puts '###########'
      puts '#failed!!!#'
      puts '###########'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    set_post_user
    authorize @post, :update?
    if @post.update(post_params)
      redirect_to posts_path, notice: 'Post update successfully!'
    else
      render :edit, notice: 'Post update failed!'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy if @post
    redirect_to posts_path, notice: 'Post areadly deteled!'
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :content, :if_headline, images: [])
  end

  def set_post
    @post = Post.find_by(id: params[:id])
  end
end
