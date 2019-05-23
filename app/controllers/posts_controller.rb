class PostsController < ApplicationController
  def index
    @posts = Post.includes()
  end

  def create
    post = Post.create(post_params)
    binding.pry
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:article)
  end

end
