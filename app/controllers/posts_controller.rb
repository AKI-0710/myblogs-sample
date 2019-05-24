class PostsController < ApplicationController
  def index
    @posts = Post.includes()
  end

  def create
    post = Post.create(post_params)
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    binding.pry
    post = Post.find(params[:id])
    post.destroy
    redirect_to(posts_path)

  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to(post_path(params[:id]))
  end
  private

  def post_params
    params.require(:post).permit(:article)
  end

end
